require 'rails_helper'

RSpec.describe "checkins/show", type: :view do
  before(:each) do
    assign(:checkin, Checkin.create!(
      customer: nil,
      gym: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
