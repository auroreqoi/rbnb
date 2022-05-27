class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user

    @hive = Hive.find(params[:hive_id])
    @like.hive = @hive

    if @like.save
      respond_to do |format|
        format.html { redirect_to hives_path }
        format.json do
          render json: {
            success: true,
            button: render_to_string(partial: "likes/unlike_button", locals: { like: @like }, formats: [:html])
          }
        end
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json do
          render json: { success: false, errors: @hive.errors.messages }
        end
      end
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy

    respond_to do |format|
      format.html { redirect_to hives_path }
      format.json do
        render json: {
          success: true,
          button: render_to_string(partial: "likes/like_button", locals: { hive: @like.hive }, formats: [:html])
        }
      end
    end
  end
end
