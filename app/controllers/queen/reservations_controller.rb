class Queen::ReservationsController < ApplicationController
  def index
    @reservations = current_user.queen_reservations
  end


end
