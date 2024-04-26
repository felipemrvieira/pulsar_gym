require 'rails_helper'

RSpec.describe "states/edit", type: :view do
  let(:state) {
    State.create!(
      name: "MyString",
      country: nil
    )
  }

  before(:each) do
    assign(:state, state)
  end

  it "renders the edit state form" do
    render

    assert_select "form[action=?][method=?]", state_path(state), "post" do

      assert_select "input[name=?]", "state[name]"

      assert_select "input[name=?]", "state[country_id]"
    end
  end
end
