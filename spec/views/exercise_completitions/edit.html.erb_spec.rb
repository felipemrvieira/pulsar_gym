require 'rails_helper'

RSpec.describe "exercise_completitions/edit", type: :view do
  let(:exercise_completition) {
    ExerciseCompletition.create!(
      load: "MyString",
      checkin: nil,
      exercise: nil
    )
  }

  before(:each) do
    assign(:exercise_completition, exercise_completition)
  end

  it "renders the edit exercise_completition form" do
    render

    assert_select "form[action=?][method=?]", exercise_completition_path(exercise_completition), "post" do

      assert_select "input[name=?]", "exercise_completition[load]"

      assert_select "input[name=?]", "exercise_completition[checkin_id]"

      assert_select "input[name=?]", "exercise_completition[exercise_id]"
    end
  end
end
