class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :job_listing_id, :status, :created_at, :job_listing, :date_applied
end
