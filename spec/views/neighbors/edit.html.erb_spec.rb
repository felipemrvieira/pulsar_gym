require 'rails_helper'

RSpec.describe "neighbors/edit", type: :view do
  let(:neighbor) {
    Neighbor.create!(
      name: "MyString",
      city: nil
    )
  }

  before(:each) do
    assign(:neighbor, neighbor)
  end

  it "renders the edit neighbor form" do
    render

    assert_select "form[action=?][method=?]", neighbor_path(neighbor), "post" do

      assert_select "input[name=?]", "neighbor[name]"

      assert_select "input[name=?]", "neighbor[city_id]"
    end
  end
end
