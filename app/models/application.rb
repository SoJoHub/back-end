class Application < ApplicationRecord
    has_many :interviews, dependent: :destroy
    has_many :todos, dependent: :destroy
    belongs_to :user
    belongs_to :job_listing
end
