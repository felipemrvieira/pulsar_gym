require 'rails_helper'

RSpec.describe "gym_plans/new", type: :view do
  before(:each) do
    assign(:gym_plan, GymPlan.new(
      name: "MyString",
      price_cents: 1,
      is_active: false,
      gym: nil
    ))
  end

  it "renders new gym_plan form" do
    render

    assert_select "form[action=?][method=?]", gym_plans_path, "post" do

      assert_select "input[name=?]", "gym_plan[name]"

      assert_select "input[name=?]", "gym_plan[price_cents]"

      assert_select "input[name=?]", "gym_plan[is_active]"

      assert_select "input[name=?]", "gym_plan[gym_id]"
    end
  end
end
