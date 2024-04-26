require 'rails_helper'

RSpec.describe "measures/show", type: :view do
  before(:each) do
    assign(:measure, Measure.create!(
      body_part: "Body Part",
      value: 2,
      examination: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body Part/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
