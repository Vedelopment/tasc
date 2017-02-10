class Submission < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  belongs_to :feedback
end
