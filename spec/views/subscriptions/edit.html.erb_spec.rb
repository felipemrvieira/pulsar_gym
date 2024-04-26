require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  let(:subscription) {
    Subscription.create!(
      price: 1,
      gym: nil,
      subscription_plan: nil,
      is_active: false
    )
  }

  before(:each) do
    assign(:subscription, subscription)
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(subscription), "post" do

      assert_select "input[name=?]", "subscription[price]"

      assert_select "input[name=?]", "subscription[gym_id]"

      assert_select "input[name=?]", "subscription[subscription_plan_id]"

      assert_select "input[name=?]", "subscription[is_active]"
    end
  end
end
