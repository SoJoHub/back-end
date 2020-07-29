class TodoSerializer < ApplicationSerializer
  attributes :id, :task, :complete
  has_one :application
end
