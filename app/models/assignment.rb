class Assignment < ApplicationRecord
  belongs_to :course

  has_many :submissions

  validates :title, presence: true
  validates :assign_date, presence: true
  validates :visible, acceptance: true
  validates :duration, numericality: { only_integer: true }
end
