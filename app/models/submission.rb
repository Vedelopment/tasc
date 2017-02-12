class Submission < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  has_one :feedback


end
