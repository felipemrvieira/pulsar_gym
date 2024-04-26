require 'rails_helper'

RSpec.describe "enrollments/index", type: :view do
  before(:each) do
    assign(:enrollments, [
      Enrollment.create!(
        obs: "Obs",
        price_cents: 2,
        is_active: false,
        plan: nil,
        customer: nil
      ),
      Enrollment.create!(
        obs: "Obs",
        price_cents: 2,
        is_active: false,
        plan: nil,
        customer: nil
      )
    ])
  end

  it "renders a list of enrollments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Obs".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
