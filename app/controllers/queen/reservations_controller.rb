class Queen::ReservationsController < ApplicationController
  def index
    @reservations = Reservations.all
  end

  def accept!
    @reservation = Reservation.find(params[:id])
    @reservation.status = "accepted"
  end

  def decline!
    @reservation = Reservation.find(params[:id])
    @reservation.status = "declined"
  end
end
