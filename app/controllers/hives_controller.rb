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
    @reservation = Reservation.new

    @review = Review.new
    
  end

  def index
    case params[:order]
    when "desc_price"
      @hives = Hive.order(price_per_day: :desc)
    when "asc_price"
      @hives = Hive.order(price_per_day: :asc)
    else
      @hives = Hive.order(id: :desc)
    end

    @hives = @hives.where(category: params[:category]) if params[:category].present?
    @hives = @hives.search_by_name_and_description_and_address(params[:query]) if params[:query].present?

    @markers = @hives.geocoded.map do |hive|
      {
        lat: hive.latitude,
        lng: hive.longitude,
        info_window: render_to_string(partial: "info_window", locals: { hive: hive }),
        image_url: helpers.asset_url("beehive_map.png"),
        hive_id: hive.id
      }
    end
  end

  private

  def hive_params
    params.require(:hive).permit(:name, :description, :address, :price_per_day, :photo, :category)
  end
end
