class TopicsController < ApplicationController

    def index 
        @topics = Topic.all 
        render json: @topics
    end

    def show 
        # byebug
        @topic = Topic.find(params[:id])
        @comments = @topic.comments
        render json: {
            topic: @topic,
            comments: @comments
        }
    end

end
