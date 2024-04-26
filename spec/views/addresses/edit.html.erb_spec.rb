require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  let(:address) {
    Address.create!(
      street_name: "MyString",
      building_number: "MyString",
      complement: "MyString",
      neighbor: nil
    )
  }

  before(:each) do
    assign(:address, address)
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(address), "post" do

      assert_select "input[name=?]", "address[street_name]"

      assert_select "input[name=?]", "address[building_number]"

      assert_select "input[name=?]", "address[complement]"

      assert_select "input[name=?]", "address[neighbor_id]"
    end
  end
end
