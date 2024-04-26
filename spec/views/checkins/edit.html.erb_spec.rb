require 'rails_helper'

RSpec.describe "checkins/edit", type: :view do
  let(:checkin) {
    Checkin.create!(
      customer: nil,
      gym: nil
    )
  }

  before(:each) do
    assign(:checkin, checkin)
  end

  it "renders the edit checkin form" do
    render

    assert_select "form[action=?][method=?]", checkin_path(checkin), "post" do

      assert_select "input[name=?]", "checkin[customer_id]"

      assert_select "input[name=?]", "checkin[gym_id]"
    end
  end
end
