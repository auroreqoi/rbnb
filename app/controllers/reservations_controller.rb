class ReservationsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @reservations = @user.reservations.all
  end

  def new
  end

  def create
  end

  def duration
    # Il va sûrement falloir d'abord viser la bonne réservation
    # peut être avec :
    # @user = User.find(current_user.id)
    # @reservation = Reservation.find(@user.id)
    # quelque chose comme ça mais pour l'instant ça ne marche pas

    # Il faut aussi voir pour que ce soit le price_per_day du jour de la réservation !!!

    @reservation.total_price = (@reservation.end_date - @reservation.start_date) * @reservation.hive.price_per_day
  end

  # A verifier entre nous mais pour moi ça c'est dans le
  # controller inclu dans le dossier queen.

  # def accept!
  #   @reservation = Reservation.find(params[:id])
  #   @reservation.status = "accepted"
  # end

  # def decline!
  #   @reservation = Reservation.find(params[:id])
  #   @reservation.status = "declined"
  # end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
