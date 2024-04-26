require 'rails_helper'

RSpec.describe "enrollments/edit", type: :view do
  let(:enrollment) {
    Enrollment.create!(
      obs: "MyString",
      price_cents: 1,
      is_active: false,
      plan: nil,
      customer: nil
    )
  }

  before(:each) do
    assign(:enrollment, enrollment)
  end

  it "renders the edit enrollment form" do
    render

    assert_select "form[action=?][method=?]", enrollment_path(enrollment), "post" do

      assert_select "input[name=?]", "enrollment[obs]"

      assert_select "input[name=?]", "enrollment[price_cents]"

      assert_select "input[name=?]", "enrollment[is_active]"

      assert_select "input[name=?]", "enrollment[plan_id]"

      assert_select "input[name=?]", "enrollment[customer_id]"
    end
  end
end
