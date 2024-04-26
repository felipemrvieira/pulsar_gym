require 'rails_helper'

RSpec.describe "exercise_completitions/index", type: :view do
  before(:each) do
    assign(:exercise_completitions, [
      ExerciseCompletition.create!(
        load: "Load",
        checkin: nil,
        exercise: nil
      ),
      ExerciseCompletition.create!(
        load: "Load",
        checkin: nil,
        exercise: nil
      )
    ])
  end

  it "renders a list of exercise_completitions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Load".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
