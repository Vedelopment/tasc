class Feedback < ApplicationRecord
  belongs_to :communication, polymorphic: true
end
