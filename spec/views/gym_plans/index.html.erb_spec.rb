require 'rails_helper'

RSpec.describe "gym_plans/index", type: :view do
  before(:each) do
    assign(:gym_plans, [
      GymPlan.create!(
        name: "Name",
        price_cents: 2,
        is_active: false,
        gym: nil
      ),
      GymPlan.create!(
        name: "Name",
        price_cents: 2,
        is_active: false,
        gym: nil
      )
    ])
  end

  it "renders a list of gym_plans" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
