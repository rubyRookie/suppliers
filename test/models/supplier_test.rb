require "minitest_helper"

class SupplierTest < MiniTest::Unit::TestCase
  def test_to_param
    supplier = Supplier.create!(company: "Hello World", street: "Storgatan 78", city: "Lessebo", postcode: "360 50")
    assert_equal "#{supplier.id}", supplier.to_param
  end
end