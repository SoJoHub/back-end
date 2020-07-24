class ApplicationsController < ApplicationController
    # THIS IS OUR APPLICATIONS CONTROLLER
    def index
        applications = Application.all

        render json: applications
    end
end
