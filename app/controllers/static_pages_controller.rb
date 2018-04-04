class StaticPagesController < ApplicationController
  def home
    @user = User.find_by(user_id: session[:userid])
  end
end
