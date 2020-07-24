class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :job_listing_id, :date_applied, :status
end
