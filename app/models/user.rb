class User < ApplicationRecord
    has_many :topics
    has_many :applications
    has_many :comments
    has_many :job_listings, through: :applications
end