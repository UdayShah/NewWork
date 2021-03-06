class UsersController < ApplicationController
    before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
    before_action :correct_user,   only: [:edit, :update]
    before_action :admin_user,     only: :destroy

    def show
        @user = User.find(params[:id])
        @skillsets = Skillset.where(user_id: @user.id)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.user_id = User.last.user_id + 1
        @user.profile_pic = "#{@user.user_id}_profile.jpg"
        @user.resume = "#{@user.user_id}_resume.pdf"

        if @user.save
          session[:isUser] = true
          session[:userid] = @user.user_id
          redirect_to locations_url
        else
          render 'new'
        end
      end

    def upload_picture
        @user = User.find(params[:id])
        uploaded_io = params[:file]
        filename = "#{@user.user_id}_profile.jpg"
        File.open(Rails.root.join('app', 'assets', 'images', 'users', filename), 'wb') do |file|
            file.write(uploaded_io.read)
            redirect_to @user
        end
    end

    def upload_resume
        @user = User.find(params[:id])
        uploaded_io = params[:file]
        filename = "#{@user.user_id}_resume.pdf"
        File.open(Rails.root.join('public', 'uploads', 'resumes', filename), 'wb') do |file|
            file.write(uploaded_io.read)
            redirect_to @user
        end
    end

    def destroy
        User.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to users_url
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password,
                                     :password_confirmation, :user_type)
    end

    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
end
