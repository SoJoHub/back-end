class JobListingSerializer < ActiveModel::Serializer
  has_many :applications
  attributes :id, :company, :title, :description, :location, :listing_url, :created_at
end
