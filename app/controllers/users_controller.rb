class UsersController < ApplicationController
    #before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
    #before_action :correct_user,   only: [:edit, :update]
    #before_action :admin_user,     only: :destroy

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

    def upload_profile
        @user = User.find(params[:id])
        uploaded_io = params[:file]
        filename = "#{@user.id}_profile.jpg"
        File.open(Rails.root.join('public', 'uploads',filename), 'wb') do |file|
            file.write(uploaded_io.read)
            # respond_to do |format|
            #     format.html { redirect_to(root_url, :notice => 'File was uploaded.') }
            # end
        end
    end

    # def get_profile_picture
    #     @user = User.find(params[:id])
    #     filename = "assets/images/profiles/#{@user.id}_profile.jpg"
    #
    #     if(File.exist?(filename))
    #         @image = image_tag("profiles/#{@user.id}_profile.jpg", width: "15%", class: "profile_picture")
    #     else
    #         @image = image_tag('users/noimage.jpg', width: "15%", class: "profile_picture")
    #     end
    # end

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
