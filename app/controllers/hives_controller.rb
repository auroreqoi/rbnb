class HivesController < ApplicationController
  def new
    @hive = Hive.new
  end

  def create
    @hive = Hive.new(hive_params)
    @hive.save
    if @hive.save
      redirect_to hive_path(@hive)
    else
      render :new
    end
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
