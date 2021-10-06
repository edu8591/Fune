class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @ship = Ship.find(params[:ship_id])
    @reservation.ship = @ship
    @reservation.user = current_user
    @reservation.price = calculate_price
    @reservation.negotiation_status = 'apply'
    if @reservation.save
      redirect_to ships_path
      #redireccionar pag para ver reservaciones
    else
      ship_path(params[:ship_id])
      #render(:controller=>“other_controller”, :action=>“some_action”)


    end


  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_start, :reservation_end, :people_in_reservation)
  end
  def calculate_price
    if @reservation.reservation_end.nil? || @reservation.reservation_start.nil?
      return
    else
    length = @reservation.reservation_end.to_date - @reservation.reservation_start.to_date
    length = length.to_i
    @ship.price * length
    end
  end
end