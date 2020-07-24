class TopicsController < ApplicationController
    belongs_to :user, :forum
    has_many :comments
end
