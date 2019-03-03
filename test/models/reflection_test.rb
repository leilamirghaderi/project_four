require 'test_helper'
class ReflectionTest < ActiveSupport::TestCase
   test "reflection fields must not be empty" do
     Reflection = Reflection.new
     assert Reflection.invalid?
     assert Reflection.errors[:reaction].any?
     assert Reflection.errors[:title].any?
     assert Reflection.errors[:week].any?
     assert Reflection.errors[:student_id].any?
  end
end
