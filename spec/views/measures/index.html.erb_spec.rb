require 'rails_helper'

RSpec.describe "measures/index", type: :view do
  before(:each) do
    assign(:measures, [
      Measure.create!(
        body_part: "Body Part",
        value: 2,
        examination: nil
      ),
      Measure.create!(
        body_part: "Body Part",
        value: 2,
        examination: nil
      )
    ])
  end

  it "renders a list of measures" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Body Part".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
