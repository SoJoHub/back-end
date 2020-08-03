class InterviewSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :application
  attributes :id, :application_id, :date, :complete, :interviewer, :location, :notes, :created_at, :user_id, :application_company

  def application_company
    self.object.application.job_listing.company
  end
end
