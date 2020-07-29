class TodoSerializer < ApplicationSerializer
  attributes :id, :task, :complete
  belongs_to :application
end
