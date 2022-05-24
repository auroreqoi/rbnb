class HivesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @hive = Hive.find(params[:id])
  end

  def index
    @hives = Hive.all
  end

  private

  def hive_params
    params.require(:hive).permit(:name, :description, :address, :price_per_day, :queen_id)
  end
end
