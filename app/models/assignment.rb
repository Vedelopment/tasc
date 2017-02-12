class Assignment < ApplicationRecord
  belongs_to :course

  has_many :submissions
  has_many :students, through: :submissions

  validates :title, presence: true
  validates :instructions, presence: true

  validates :duration, numericality: { only_float: true }
end
