class LocationsController < ApplicationController
  def new
    @location = Location.new
    @province = Province.all
  end

  private

  def locations_params
      params.require(:location).permit(:building_number, :street, :apartment_number, :postal_code,
                                   :city, :province)
  end

end
