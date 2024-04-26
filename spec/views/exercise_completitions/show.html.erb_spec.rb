require 'rails_helper'

RSpec.describe "exercise_completitions/show", type: :view do
  before(:each) do
    assign(:exercise_completition, ExerciseCompletition.create!(
      load: "Load",
      checkin: nil,
      exercise: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Load/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
