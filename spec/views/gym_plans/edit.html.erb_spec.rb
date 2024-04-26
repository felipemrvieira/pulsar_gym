require 'rails_helper'

RSpec.describe "gym_plans/edit", type: :view do
  let(:gym_plan) {
    GymPlan.create!(
      name: "MyString",
      price_cents: 1,
      is_active: false,
      gym: nil
    )
  }

  before(:each) do
    assign(:gym_plan, gym_plan)
  end

  it "renders the edit gym_plan form" do
    render

    assert_select "form[action=?][method=?]", gym_plan_path(gym_plan), "post" do

      assert_select "input[name=?]", "gym_plan[name]"

      assert_select "input[name=?]", "gym_plan[price_cents]"

      assert_select "input[name=?]", "gym_plan[is_active]"

      assert_select "input[name=?]", "gym_plan[gym_id]"
    end
  end
end
