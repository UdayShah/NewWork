class LocationsController < ApplicationController
  def new
    @location = Location.new
    @province = Province.all
  end

  def create
    @location = Location.new(location_params)

    if @location.save
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
