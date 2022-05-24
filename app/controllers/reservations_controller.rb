class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations.all
  end

  def new
  end

  def create
  end

  def accept!
  end

  def decline!
  end
end
