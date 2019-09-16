require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "create a simple Person" do
    assert_difference 'Person.all.count', 1 do
      Person.create name: 'Person 01'
    end
  end
  test "don't create a Person without name" do
    assert_difference 'Person.all.count', 0 do
      Person.create age: 12
    end
  end
end
