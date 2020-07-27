class InterviewSerializer < ActiveModel::Serializer
  attributes :id, :application_id, :date, :complete, :interviewer, :location, :notes, :created_at
end
