require 'rails_helper'

RSpec.describe "enrollments/new", type: :view do
  before(:each) do
    assign(:enrollment, Enrollment.new(
      obs: "MyString",
      price_cents: 1,
      is_active: false,
      plan: nil,
      customer: nil
    ))
  end

  it "renders new enrollment form" do
    render

    assert_select "form[action=?][method=?]", enrollments_path, "post" do

      assert_select "input[name=?]", "enrollment[obs]"

      assert_select "input[name=?]", "enrollment[price_cents]"

      assert_select "input[name=?]", "enrollment[is_active]"

      assert_select "input[name=?]", "enrollment[plan_id]"

      assert_select "input[name=?]", "enrollment[customer_id]"
    end
  end
end
