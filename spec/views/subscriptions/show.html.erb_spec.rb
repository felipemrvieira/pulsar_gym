require 'rails_helper'

RSpec.describe "subscriptions/show", type: :view do
  before(:each) do
    assign(:subscription, Subscription.create!(
      price: 2,
      gym: nil,
      subscription_plan: nil,
      is_active: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
