class CommentsController < ApplicationController
    belongs_to :topic, :user
end
