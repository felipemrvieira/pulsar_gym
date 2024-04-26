require 'rails_helper'

RSpec.describe "examinations/show", type: :view do
  before(:each) do
    assign(:examination, Examination.create!(
      instructor: nil,
      customer: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
