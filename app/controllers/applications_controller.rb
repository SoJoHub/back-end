class ApplicationsController < ApplicationController
    # THIS IS OUR APPLICATIONS CONTROLLER
    before_action :authorized
    def index
       
        applications =  @user.applications

        render json: applications
    end

    def show 
        @application = Application.find(params[:id])
        render json: {
            application: @application
        }
    end

    def create 
        job_listing = JobListing.create(job_listing_params)
        application = Application.create(user_id: @user.id, job_listing_id: job_listing.id, status: application_params["status"])
        render json: application
    end 


    private
  
    def application_params
      params.permit(:user_id, :job_listing_id, :status)
    end

    def job_listing_params
      params.permit(:company, :title, :description, :location, :listing_url)
    end
end
