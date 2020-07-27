class CommentSerializer < ActiveModel::Serializer
  attributes :id, :topic_id, :user_id, :content, :created_at, :user_name

  def user_name 
    self.object.user.name 
  end 
end
