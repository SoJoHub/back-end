class CommentSerializer < ActiveModel::Serializer
  attributes :id, :thread_id, :user_id, :date_time, :content
end
