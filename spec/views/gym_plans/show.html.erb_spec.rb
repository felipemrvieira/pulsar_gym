require 'rails_helper'

RSpec.describe "gym_plans/show", type: :view do
  before(:each) do
    assign(:gym_plan, GymPlan.create!(
      name: "Name",
      price_cents: 2,
      is_active: false,
      gym: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
