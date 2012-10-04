require "minitest_helper"

class CategoryTest < MiniTest::Unit::TestCase
  def test_to_param
    category = Category.create!(name: "drinks")
    assert_equal "#{category.id}", category.to_param
  end
end