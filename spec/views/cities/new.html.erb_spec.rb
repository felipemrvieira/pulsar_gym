require 'rails_helper'

RSpec.describe "cities/new", type: :view do
  before(:each) do
    assign(:city, City.new(
      name: "MyString",
      state: nil
    ))
  end

  it "renders new city form" do
    render

    assert_select "form[action=?][method=?]", cities_path, "post" do

      assert_select "input[name=?]", "city[name]"

      assert_select "input[name=?]", "city[state_id]"
    end
  end
end
