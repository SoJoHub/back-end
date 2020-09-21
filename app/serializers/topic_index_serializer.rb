class TopicIndexSerializer < ActiveModel::Serializer
    attributes :id, :forum_id, :user_id, :title, :created_at, :user_name
    
    def user_name 
        self.object.user.name 
      end 
    
end  