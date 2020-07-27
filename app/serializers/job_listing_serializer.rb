class JobListingSerializer < ActiveModel::Serializer
  attributes :id, :company, :title, :description, :location, :listing_url, :created_at
end
