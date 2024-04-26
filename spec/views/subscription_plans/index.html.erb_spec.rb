require 'rails_helper'

RSpec.describe "subscription_plans/index", type: :view do
  before(:each) do
    assign(:subscription_plans, [
      SubscriptionPlan.create!(
        name: "Name",
        price_cents: 2,
        super_admin: nil
      ),
      SubscriptionPlan.create!(
        name: "Name",
        price_cents: 2,
        super_admin: nil
      )
    ])
  end

  it "renders a list of subscription_plans" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
