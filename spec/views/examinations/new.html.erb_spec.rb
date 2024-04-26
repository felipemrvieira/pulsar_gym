require 'rails_helper'

RSpec.describe "examinations/new", type: :view do
  before(:each) do
    assign(:examination, Examination.new(
      instructor: nil,
      customer: nil
    ))
  end

  it "renders new examination form" do
    render

    assert_select "form[action=?][method=?]", examinations_path, "post" do

      assert_select "input[name=?]", "examination[instructor_id]"

      assert_select "input[name=?]", "examination[customer_id]"
    end
  end
end
