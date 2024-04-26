require 'rails_helper'

RSpec.describe "subscription_plans/edit", type: :view do
  let(:subscription_plan) {
    SubscriptionPlan.create!(
      name: "MyString",
      price_cents: 1,
      super_admin: nil
    )
  }

  before(:each) do
    assign(:subscription_plan, subscription_plan)
  end

  it "renders the edit subscription_plan form" do
    render

    assert_select "form[action=?][method=?]", subscription_plan_path(subscription_plan), "post" do

      assert_select "input[name=?]", "subscription_plan[name]"

      assert_select "input[name=?]", "subscription_plan[price_cents]"

      assert_select "input[name=?]", "subscription_plan[super_admin_id]"
    end
  end
end
