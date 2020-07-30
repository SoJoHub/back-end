class CommentsController < ApplicationController
     before_action :authorized
    # def topic_comments  
    #   @topic = Topic.find(params[:id])
    #   @comments = @topic.comments
    #   render json: @comments
    # end

    def update
    comment =Comment.find(comments_params[:id])
    comment.update(content:params["content"])
    render json: comment
    end

    def create 
        # byebug 
        # comment = Comment.create(user_id: @user.id, topic_id: comments_params["topic_id"], content: comments_params["content"])
        # render json: {comment: comment, user_name: @user.name}
        # /ws try blw
        @comment = Comment.create(user_id: @user.id, topic_id: params["topic_id"], content: params["content"])

        # topic = Topic.find(comments_params[:comment_id])
        # byebug
        topic = Topic.find(params["topic_id"])
        if @comment.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            CommentSerializer.new(@comment)
          ).serializable_hash
          CommentsChannel.broadcast_to topic, serialized_data
          head :ok
        end 
      end
        # comment = Comment.create(user_id: @user.id, topic_id: comments_params["topic_id"], content: comments_params["content"])
        # render json: {comment: comment, user_name: @user.name}
    
   

    def destroy 
      comment = Comment.find(comments_params["id"])
      deletedComment = comment.destroy
      render json: deletedComment
  end



    private
  
    def comments_params
      params.permit(:comment,:content, :topic_id, :id, :conversation_id)
    end

end
