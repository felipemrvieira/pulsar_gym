require 'rails_helper'

RSpec.describe "workouts/show", type: :view do
  before(:each) do
    assign(:workout, Workout.create!(
      name: "Name",
      examination: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
