require 'rails_helper'

RSpec.describe "examinations/edit", type: :view do
  let(:examination) {
    Examination.create!(
      instructor: nil,
      customer: nil
    )
  }

  before(:each) do
    assign(:examination, examination)
  end

  it "renders the edit examination form" do
    render

    assert_select "form[action=?][method=?]", examination_path(examination), "post" do

      assert_select "input[name=?]", "examination[instructor_id]"

      assert_select "input[name=?]", "examination[customer_id]"
    end
  end
end
