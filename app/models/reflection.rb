class Reflection < ApplicationRecord
  belongs_to :student
  validates :reaction, :title, :week, :student_id, presence: true
  validates :week,
  numericality: { integer_only: true, greater_than_or_equal_to: 1 }
end
