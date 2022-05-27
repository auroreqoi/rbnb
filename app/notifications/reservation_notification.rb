# To deliver this notification:
#
# ReservationNotification.with(post: @post).deliver_later(current_user)
# ReservationNotification.with(post: @post).deliver(current_user)

class ReservationNotification < Noticed::Base
  deliver_by :database
  deliver_by :action_cable, stream: :recipient_stream
  # Add your delivery methods
  #
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  def recipient_stream
    recipient.id
  end
  # def message
  #   t(".message")
  # end

  # # URL helpers are accessible in notifications
  # # Don't forget to set your default_url_options so Rails knows how to generate urls
  # def url
  #   root_path(params[:post])
  # end

  # after_deliver do
    # Anything you want
  # end
end
