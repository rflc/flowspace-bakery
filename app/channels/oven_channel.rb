class OvenChannel < ApplicationCable::Channel
  def subscribed
    stream_from "oven_#{params[:oven_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
