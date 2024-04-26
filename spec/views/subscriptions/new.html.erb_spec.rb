require 'rails_helper'

RSpec.describe "subscriptions/new", type: :view do
  before(:each) do
    assign(:subscription, Subscription.new(
      price: 1,
      gym: nil,
      subscription_plan: nil,
      is_active: false
    ))
  end

  it "renders new subscription form" do
    render

    assert_select "form[action=?][method=?]", subscriptions_path, "post" do

      assert_select "input[name=?]", "subscription[price]"

      assert_select "input[name=?]", "subscription[gym_id]"

      assert_select "input[name=?]", "subscription[subscription_plan_id]"

      assert_select "input[name=?]", "subscription[is_active]"
    end
  end
end
