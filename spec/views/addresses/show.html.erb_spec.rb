require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    assign(:address, Address.create!(
      street_name: "Street Name",
      building_number: "Building Number",
      complement: "Complement",
      neighbor: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Building Number/)
    expect(rendered).to match(/Complement/)
    expect(rendered).to match(//)
  end
end
