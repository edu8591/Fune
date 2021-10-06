class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @ship = Ship.find(params[:ship_id])
    @reservation.ship = @ship
    @reservation.user = current_user
    raise

  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_start, :reservation_end, :people_in_reservation)
  end
end