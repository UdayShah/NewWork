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

        @user.update_columns(location_id: @user.location_id)

        if @user.user_type == "e"
          flash[:created] = "You account has been created. Please log in"
          redirect_to login_url
        else
          redirect_to skillsets_url
        end
      else
        @posting = Posting.find_by(posting_id: session[:postingid])
        @posting.location_id = @location.id

        @posting.update_columns(location_id: @posting.location_id)

        flash[:created] = "Posting created"
		redirect_to current_user
        
      end
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
