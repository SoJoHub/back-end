class ApplicationSerializer < ActiveModel::Serializer
  # has_many :Interviews
  attributes :id, :user_id, :job_listing_id, :status, :created_at, :job_listing, :date_applied, :interviews
end
