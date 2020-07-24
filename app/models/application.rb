class Application < ApplicationRecord
    has_many :interviews
    belongs_to :user
    belongs_to :job_listing
end
