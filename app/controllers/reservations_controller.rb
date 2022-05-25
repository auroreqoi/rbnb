class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations.order("id DESC")
  end

  def new
    @hive = Hive.find(params[:hive_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(date_params)
    @reservation.user = current_user

    @hive = Hive.find(params[:hive_id])
    @reservation.hive = @hive

    @reservation.total_price = (@reservation.end_date - @reservation.start_date).to_i * @reservation.hive.price_per_day

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
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

  private

  def date_params
    params.require(:reservation).permit(:end_date, :start_date)
  end

end
