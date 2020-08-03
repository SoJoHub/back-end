class TopicSerializer < ActiveModel::Serializer
  has_many :comments 

  attributes :id, :forum_id, :user_id, :title, :created_at, :description,  :user_name



  def user_name 
    self.object.user.name 
  end 


end
