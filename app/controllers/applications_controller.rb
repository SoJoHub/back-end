class ApplicationsController < ApplicationController
    # THIS IS OUR APPLICATIONS CONTROLLER
    before_action :authorized
    def index
       
        applications =  @user.applications
        render json: applications
    end

    def show 
        application = Application.find(params[:id])
        render json: application
    end

    def create 
        job_listing = JobListing.create(job_listing_params)
        application = Application.create(user_id: @user.id, job_listing_id: job_listing.id, status: application_params["status"], date_applied: application_params["date_applied"])
        render json: application
    end 

    def update
        application = Application.find(params[:id])
        job_listing = JobListing.find(application.job_listing_id)
        updatedApp = application.update(status: application_params["status"], date_applied: application_params["date_applied"])
        updatedJobListing = job_listing.update(job_listing_params)
        render json: {
          application: application,
          job_listing: job_listing,
        }
    end

    def destroy
        application = Application.find(params[:id])
        deleted = application.destroy
        render json: deleted
    end


    private
  
    def application_params
      params.permit(:id, :user_id, :job_listing_id, :status, :date_applied)
    end

    def job_listing_params
      params.permit(:company, :title, :description, :location, :listing_url)
    end
end
