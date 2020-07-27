class CommentsController < ApplicationController
    # before_action :authorized

    def create 
        # byebug 
        comment = Comment.create(user_id: @user.id, topic_id: comments_params["topic_id"], content: comments_params["comment"])
        render json: {comment: comment, user_name: @user.name}
    end 



    private
  
    def comments_params
      params.permit(:comment, :topic_id)
    end

end
