require 'rails_helper'

RSpec.describe "measures/new", type: :view do
  before(:each) do
    assign(:measure, Measure.new(
      body_part: "MyString",
      value: 1,
      examination: nil
    ))
  end

  it "renders new measure form" do
    render

    assert_select "form[action=?][method=?]", measures_path, "post" do

      assert_select "input[name=?]", "measure[body_part]"

      assert_select "input[name=?]", "measure[value]"

      assert_select "input[name=?]", "measure[examination_id]"
    end
  end
end
