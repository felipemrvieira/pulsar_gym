require 'rails_helper'

RSpec.describe "neighbors/show", type: :view do
  before(:each) do
    assign(:neighbor, Neighbor.create!(
      name: "Name",
      city: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
