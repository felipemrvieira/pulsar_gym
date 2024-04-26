require 'rails_helper'

RSpec.describe "enrollments/show", type: :view do
  before(:each) do
    assign(:enrollment, Enrollment.create!(
      obs: "Obs",
      price_cents: 2,
      is_active: false,
      plan: nil,
      customer: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Obs/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
