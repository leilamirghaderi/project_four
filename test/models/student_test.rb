require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "student fields must not be empty" do
    Student = Student.new
    assert Student.invalid?
    assert Student.errors[:firstname].any?
    assert Student.errors[:lastname].any?
 end
end
