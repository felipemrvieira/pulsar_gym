require 'rails_helper'

RSpec.describe "plans/show", type: :view do
  before(:each) do
    assign(:plan, Plan.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
