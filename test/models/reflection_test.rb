require 'test_helper'
class ReflectionTest < ActiveSupport::TestCase

   test "reflection fields must not be empty" do
     Reflection = Reflection.new
     assert Reflection.invalid?
     assert Reflection.errors[:reaction].any?
     assert Reflection.errors[:title].any?
     assert Reflection.errors[:week].any?
     assert Reflection.errors[:student].any?
  end

  test "reflection responds to student_name getter" do
    @reflection = reflections(:one)
    assert_equal @reflection.student_name, reflections(:one).student.name
  end

  test "reflection responses to student_name setter" do
  @reflection = reflections(:one)
  @reflection.student_name = students(:leila).name
  @reflection.save
  assert_equal @reflection.student_name, students(:leila).name
  end

end
