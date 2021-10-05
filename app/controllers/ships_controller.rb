class ShipsController < ApplicationController

  def index
    @ships = Ship.all
  end

  def ship_params
    params.require(:ship).permit(:max_people,:price, :ship_type, :latitude, :longitude, :name, :description, images: [])
  end
end
