class NotificationsChannel < ApplicationCable::Channel
  def custom_stream
    "user_#{recipient.id}"
  end

  def action_cable_data
    { user_id: recipient.id }
  end
end
