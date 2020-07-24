class ForumsController < ApplicationController
    has_many :topics
    has_many :users, through: :topics
end
