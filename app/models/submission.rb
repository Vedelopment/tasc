class Submission < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  has_one :feedback

  validates :content, presence: true   #needed to remove to get these to save
end
