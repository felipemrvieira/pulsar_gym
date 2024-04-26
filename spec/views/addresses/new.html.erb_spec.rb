require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      street_name: "MyString",
      building_number: "MyString",
      complement: "MyString",
      neighbor: nil
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[street_name]"

      assert_select "input[name=?]", "address[building_number]"

      assert_select "input[name=?]", "address[complement]"

      assert_select "input[name=?]", "address[neighbor_id]"
    end
  end
end
