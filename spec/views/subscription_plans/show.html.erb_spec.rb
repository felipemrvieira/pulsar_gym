require 'rails_helper'

RSpec.describe "subscription_plans/show", type: :view do
  before(:each) do
    assign(:subscription_plan, SubscriptionPlan.create!(
      name: "Name",
      price_cents: 2,
      super_admin: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
