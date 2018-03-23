class UsersController < ApplicationController
    before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
    #before_action :correct_user,   only: [:edit, :update]
    before_action :admin_user,     only: :destroy

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to login_url
        else
            render 'new'
        end
    end

    def upload
      uploaded_io = params[:person][:picture]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password,
                                     :password_confirmation)
    end

    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
    end
end
