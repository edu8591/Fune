class ShipsController < ApplicationController

  def index
    @ships = Ship.all
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

  def show
    @ship = Ship.find(params[:id])
    @ship_images = @ship.images.all
    @reservation = Reservation.new

  end

  def ship_params
    params.require(:ship).permit(:max_people,:price, :ship_type, :latitude, :longitude, :name, :description, images: [])
  end
end
