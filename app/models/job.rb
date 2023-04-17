class Job < ActiveRecord::Base
    belongs_to :company
    has_many :applicants
end