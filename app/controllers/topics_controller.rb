class TopicsController < ApplicationController
    before_action :authorized, except: [:index, :show]
    def index 
        @topics = Topic.all 
        render json: @topics
    end

    def show 
        # byebug
        @topic = Topic.find(params[:id])
        @comments = @topic.comments
        # byebug
        render json: {topic: TopicSerializer.new(@topic)}
    end

    def create 
        topic = Topic.create(forum_id: 1, user_id: @user.id, title: topics_params["topic"])
        render json: topic
    end 


    private
  
    def topics_params
      params.permit(:topic)
    end

end
