require 'test_helper'

class CityTest < ActiveSupport::TestCase

  test "should not save a City with state more or less than two characters length" do
    city = City.new
    city.name = "WhatEverCity"
    city.state = "ABC"
    assert_not city.save
  end

end
