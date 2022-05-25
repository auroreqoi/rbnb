class HivesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  def new
    @hive = Hive.new
  end

  def create
    @hive = Hive.new(hive_params)
    @hive.queen = current_user

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
    @hives = Hive.order("id DESC").all

    @markers = @hives.geocoded.map do |hive|
      {
        lat: hive.latitude,
        lng: hive.longitude,
        info_window: render_to_string(partial: "info_window", locals: { hive: hive }),
        image_url: helpers.asset_url("beehive_map.png")
      }
    end
  end

  private

  def hive_params
    params.require(:hive).permit(:name, :description, :address, :price_per_day, :photo)
  end
end
