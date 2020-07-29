class CommentsChannel < ApplicationCable::Channel
  def subscribed
    topic = Topic.find(params[:topic])
    stream_for topic

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
