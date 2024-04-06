require 'rails_helper'

RSpec.describe "gyms/index", type: :view do
  before(:each) do
    assign(:gyms, [
      Gym.create!(
        name: "Name",
        email: "Email",
        logo: "Logo"
      ),
      Gym.create!(
        name: "Name",
        email: "Email",
        logo: "Logo"
      )
    ])
  end

  it "renders a list of gyms" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Logo".to_s), count: 2
  end
end
