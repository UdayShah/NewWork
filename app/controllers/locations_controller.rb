class LocationsController < ApplicationController
  def new
    @location = Location.new
    @province = Province.all
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      if session[:isUser] == true
        @user = User.find_by(user_id: session[:userid])
        @user.location_id = @location.id
      end

      redirect_to login_url
    else
      @province = Province.all
      render 'new'
    end
  end

  private

  def location_params
      params.require(:location).permit(:building_number, :street, :apartment_number, :postal_code,
                                   :city, :province)
  end

end
