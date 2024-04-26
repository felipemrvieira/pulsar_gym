require 'rails_helper'

RSpec.describe "exercises/edit", type: :view do
  let(:exercise) {
    Exercise.create!(
      name: "MyString",
      description: "MyText",
      workout: nil
    )
  }

  before(:each) do
    assign(:exercise, exercise)
  end

  it "renders the edit exercise form" do
    render

    assert_select "form[action=?][method=?]", exercise_path(exercise), "post" do

      assert_select "input[name=?]", "exercise[name]"

      assert_select "textarea[name=?]", "exercise[description]"

      assert_select "input[name=?]", "exercise[workout_id]"
    end
  end
end
