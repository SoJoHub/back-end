class InterviewsController < ApplicationController
    before_action :authorized

    def index
        interviews = @user.interviews
        render json: interviews
    end

    def show
        interview = Interview.find(params[:id])

         render json: interview
    end

    def create 
        interview = Interview.create(application_id: params["application_id"], user_id: @user.id, date: params["date"], complete: params["complete"], interviewer: params["interviewer"], notes: params["notes"])
        render json: interview
    end 

    def destroy 
        interview = Interview.find(params["id"])
        deleted = interview.destroy

        render json: deleted
    end

    def update 
        interview = Interview.find(params["id"])
        # byebug 
        interview.update(date: params["date"], complete: params["complete"], interviewer: params["interviewer"], notes: params["notes"])
        render json: interview
    end 

    private

    def interview_params
        params.permit(:id, :interviewer, :location, :date, :notes)
    end
end
