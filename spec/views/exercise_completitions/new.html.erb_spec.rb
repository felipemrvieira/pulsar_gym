require 'rails_helper'

RSpec.describe "exercise_completitions/new", type: :view do
  before(:each) do
    assign(:exercise_completition, ExerciseCompletition.new(
      load: "MyString",
      checkin: nil,
      exercise: nil
    ))
  end

  it "renders new exercise_completition form" do
    render

    assert_select "form[action=?][method=?]", exercise_completitions_path, "post" do

      assert_select "input[name=?]", "exercise_completition[load]"

      assert_select "input[name=?]", "exercise_completition[checkin_id]"

      assert_select "input[name=?]", "exercise_completition[exercise_id]"
    end
  end
end
