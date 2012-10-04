require "minitest_helper"

describe "Categories integration" do
  it "shows category's name" do
    category = Category.create!(name: "sweets")
    visit category_path(category)
    page.text.must_include "sweets"
  end
end