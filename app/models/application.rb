class Application < ApplicationRecord
    has_many :interviews
    has_many :todos
    belongs_to :user
    belongs_to :job_listing
end
