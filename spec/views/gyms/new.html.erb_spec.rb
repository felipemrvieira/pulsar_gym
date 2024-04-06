require 'rails_helper'

RSpec.describe "gyms/new", type: :view do
  before(:each) do
    assign(:gym, Gym.new(
      name: "MyString",
      email: "MyString",
      logo: "MyString"
    ))
  end

  it "renders new gym form" do
    render

    assert_select "form[action=?][method=?]", gyms_path, "post" do

      assert_select "input[name=?]", "gym[name]"

      assert_select "input[name=?]", "gym[email]"

      assert_select "input[name=?]", "gym[logo]"
    end
  end
end
