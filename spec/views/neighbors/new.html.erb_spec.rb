require 'rails_helper'

RSpec.describe "neighbors/new", type: :view do
  before(:each) do
    assign(:neighbor, Neighbor.new(
      name: "MyString",
      city: nil
    ))
  end

  it "renders new neighbor form" do
    render

    assert_select "form[action=?][method=?]", neighbors_path, "post" do

      assert_select "input[name=?]", "neighbor[name]"

      assert_select "input[name=?]", "neighbor[city_id]"
    end
  end
end
