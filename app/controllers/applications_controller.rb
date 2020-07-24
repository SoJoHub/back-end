class ApplicationsController < ApplicationController
    # THIS IS OUR APPLICATIONS CONTROLLER
    has_many :interviews
    belongs_to :user, :job_listing
end
