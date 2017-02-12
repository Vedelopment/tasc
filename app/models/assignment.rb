class Assignment < ApplicationRecord
  belongs_to :course

  has_many :submissions

  validates :title, presence: true
  validates :instructions, presence: true
  validates :duration, numericality: { only_float: true }
end
