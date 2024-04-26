require 'rails_helper'

RSpec.describe "subscription_plans/new", type: :view do
  before(:each) do
    assign(:subscription_plan, SubscriptionPlan.new(
      name: "MyString",
      price_cents: 1,
      super_admin: nil
    ))
  end

  it "renders new subscription_plan form" do
    render

    assert_select "form[action=?][method=?]", subscription_plans_path, "post" do

      assert_select "input[name=?]", "subscription_plan[name]"

      assert_select "input[name=?]", "subscription_plan[price_cents]"

      assert_select "input[name=?]", "subscription_plan[super_admin_id]"
    end
  end
end
