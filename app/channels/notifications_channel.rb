class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from current_user
  end

  def unsubscribed
    stop_all_streams
  end
end
