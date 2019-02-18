class Reflection < ApplicationRecord
  belongs_to :student
  validates :reaction, :title, :week, presence: true
  validates :week,
   numericality: { integer_only: true, greater_than_or_equal_to: 0 }
end
