require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  setup do
    @religion = reflections(:religion)
  end

  test "week must be two digits, now or in the future" do
    current_week = Date.today.cweek
    assert_operator 2, :>=, @religion.week.to_s.length
    @religion.week = 2222
    @religion.save
    puts @religion.week
    refute @religion.valid?
    assert @religion.errors[:week].include?("must be a two-digit week")
    @religion.save
    @religion.week = "week sixteen"
    @religion.save
    refute @religion.valid?
    @religion.week = Date.today.cweek - 1
    @religion.save
    refute @religion.valid?
    @religion.week = Date.today.cweek
    @religion.save
    puts @religion.errors.messages
    assert @religion.valid?
    @religion.week = Date.today.cweek + 1
    @religion.save
    assert @religion.valid?
  end
  test "reaction should'nt be more than five hundred words" do
    @reflections = reflections(:religion)
    @reflections.reaction = "The economic globalization of China has transformed the nature of its national policy preferences, calling into question for the rest of the world what their true intentions might very well be."
    assert_not @reflections.valid?
    [ 'thirty two words' ].each do |t|
    @reflections.reaction = t
    assert @reflections.valid?
    end
  end
  test "reflections reaction must be unique on a given week and title" do
    @china = reflections(:china)
    @china.save
    @china.reaction = reflections(:religion).reaction
    @china.save
    assert_not @china.valid?
    @china.reaction = "The twenty-first century is witnessing a resurgence and globalization of religion."
    @china.save
    assert @china.valid?
  end
  test "reflections title must be unique on a given reaction and week" do
    @china = reflections(:china)
    @china.save
    @china.reaction = reflections(:religion).reaction
    @china.save
    @china.title = reflections(:religion).title
    @china.save
    assert_not @china.valid?
  end
end
