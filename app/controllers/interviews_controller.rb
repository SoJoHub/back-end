class InterviewsController < ApplicationController
    # before_action :authorized
    def index
        interviews = @user.interviews
        render json: interviews
    end

    def show
        interview = Interview.find(params[:id])

         render json: interview
    end

    def destroy 
        interview = Interview.find(params["id"])
        deleted = interview.destroy

        render json: deleted
    end

    private

    def interview_params
        params.permit(:id)
    end
end
