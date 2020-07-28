class InterviewsController < ApplicationController
    def index
        interviews = @user.interviews
        render json: interviews
    end
end
