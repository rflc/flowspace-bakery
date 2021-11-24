class OvenChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'oven_1'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
