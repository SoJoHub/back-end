class ApplicationSerializer < ActiveModel::Serializer
  # has_many :Interviews
  belongs_to :job_listing
  belongs_to :user
  attributes :id, :user_id, :job_listing_id, :status, :created_at, :job_listing, :date_applied, :interviews, :todos
end
