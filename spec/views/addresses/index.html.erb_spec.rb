require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        street_name: "Street Name",
        building_number: "Building Number",
        complement: "Complement",
        neighbor: nil
      ),
      Address.create!(
        street_name: "Street Name",
        building_number: "Building Number",
        complement: "Complement",
        neighbor: nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Street Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Building Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Complement".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
