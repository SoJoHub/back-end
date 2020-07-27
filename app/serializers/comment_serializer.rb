class CommentSerializer < ActiveModel::Serializer
  attributes :id, :topic_id, :user_id, :content, :created_at 
end
