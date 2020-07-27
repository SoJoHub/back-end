class ApplicationsController < ApplicationController
    # THIS IS OUR APPLICATIONS CONTROLLER
    before_action :authorized
    def index
       
        applications =  @user.applications  

        render json: applications
    end
end
