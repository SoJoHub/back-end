class TopicSerializer < ActiveModel::Serializer
  attributes :id, :forum_id, :user_id, :title, :created_at, :description,  :user_name, :comments



  def user_name 
    self.object.user.name 
  end 


end
