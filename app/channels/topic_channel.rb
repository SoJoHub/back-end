class TopicChannel < ApplicationCable::Channel
  def subscribed
    stream_from "topic_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
