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
        render json: {topic: TopicSerializer.new(@topic)}
    end

    def create 
        topic = Topic.create(forum_id: 1, user_id: @user.id, title: topics_params["topic"], description: topics_params["description"])
        render json: topic
    end 

    def destroy  
        topic = Topic.find(params["id"])
        deleted = topic.destroy
        render json: deleted
    end 

    def update 
        topic = Topic.find(params["id"])
        updated = topic.update(title: topics_params["topic"], description: topics_params["description"])
        render json: updated
    end 


    private
  
    def topics_params
      params.permit(:topic, :description, :id)
    end

end
