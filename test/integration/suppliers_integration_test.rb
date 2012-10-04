require "minitest_helper"

describe "Suppliers integration" do
  it "shows supplier's company" do
    supplier = Supplier.create!(company: "Internet", street: "Storgatan 78", city: "Lessebo", postcode: "360 50")
    visit supplier_path(supplier)
    page.text.must_include "Internet"
  end
end