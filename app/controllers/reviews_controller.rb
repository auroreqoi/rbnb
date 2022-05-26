class ReviewsController < ApplicationController
  def new
    @hive = Hive.find(params[:hive_id])
    @review = Review.new
  end

  def create
    @hive = Hive.find(params[:hive_id])
    @reservation = Reservation.new
    @review = Review.new(review_params)
    @review.hive = @hive
    @review.user = current_user

    if @review.save
      redirect_to hive_path(@hive)
    else
      render "hives/show"
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
