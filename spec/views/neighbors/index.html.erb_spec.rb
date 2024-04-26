require 'rails_helper'

RSpec.describe "neighbors/index", type: :view do
  before(:each) do
    assign(:neighbors, [
      Neighbor.create!(
        name: "Name",
        city: nil
      ),
      Neighbor.create!(
        name: "Name",
        city: nil
      )
    ])
  end

  it "renders a list of neighbors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
