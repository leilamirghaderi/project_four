class Reflection < ApplicationRecord
  belongs_to :student
  validates :reaction, :title, :week, presence: true
  validates :week,
  numericality: { integer_only: true, greater_than_or_equal_to: 1 }

  def student_name=(name)
    self.student = Student.find_or_create_by(name: name)
  end

  def student_name
    self.student ? self.student.name : nil
  end
end
