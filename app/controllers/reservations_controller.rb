class ReservationsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "accepted"
    @reservation.save
    redirect_to queen_reservations_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = "declined"
    @reservation.save
    redirect_to queen_reservations_path
  end
end

