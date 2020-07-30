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
        # byebug
        # topic = Topic.create(forum_id: Forum.first.id, user_id: @user.id, title:params["topic"], description: params["description"])
        # byebug
        #
        # render json: topic
        #
        topic = Topic.new(forum_id: Forum.first.id, user_id: @user.id, title: params["topic"]["title"])
        if topic.save 
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                TopicSerializer.new(topic)
              ).serializable_hash
              ActionCable.server.broadcast 'topics_channel', serialized_data
                head :ok
                # byebug
            end
        end 

    def destroy  
        topic = Topic.find(params["id"])
        deleted = topic.destroy
        render json: deleted
    end 

    def update 
        topic = Topic.find(params["id"])
        updated = topic.update(title: topics_params["topic"], description: topics_params["description"])
        render json: topic
    end 


    private
  
    def topics_params
      params.permit(:topic, :description, :id)
    end

end
