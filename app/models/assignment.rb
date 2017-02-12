class Assignment < ApplicationRecord
  belongs_to :course

  has_many :submissions
  has_many :students, through: :submissions

  validates :title, presence: true
  validates :assign_date, presence: true
  validates :visible, acceptance: true
  validates :duration, numericality: { only_float: true }
end
