class TtopicSerializer < ActiveModel::Serializer
  attributes :id, :forum_id, :user_id, :title, :date_time
end
