class ShipsController < ApplicationController
  def index
    if params[:country].nil?
      @ships = Ship.where(ship_slice)
    else
      @ships = Ship.near(params[:country], 100)
    end
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @user = current_user
    @ship.user = @user
    if @ship.save
      redirect_to ship_path(@ship)
    else
      render :new
    end
  end

  def ship_slice
    params.permit(:max_people, :price, :ship_type, :name)
  end

  def ship_params
    params.require(:ship).permit(:max_people,:price, :ship_type, :latitude, :longitude, :name, :description, images: [])
  end
end
