class Submission < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  has_one :feedback


  validates :link, presence: true

end
