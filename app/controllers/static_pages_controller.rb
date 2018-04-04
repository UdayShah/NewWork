class StaticPagesController < ApplicationController
  def home
  @user = User.find(session[:userid])
  end
end
