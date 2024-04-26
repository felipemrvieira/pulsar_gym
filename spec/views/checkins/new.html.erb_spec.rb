require 'rails_helper'

RSpec.describe "checkins/new", type: :view do
  before(:each) do
    assign(:checkin, Checkin.new(
      customer: nil,
      gym: nil
    ))
  end

  it "renders new checkin form" do
    render

    assert_select "form[action=?][method=?]", checkins_path, "post" do

      assert_select "input[name=?]", "checkin[customer_id]"

      assert_select "input[name=?]", "checkin[gym_id]"
    end
  end
end
