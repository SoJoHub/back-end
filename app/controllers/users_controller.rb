class UsersController < ApplicationController
    has_many :topics, :applications, :comments
    has_many :job_listings, through: :applications
end
