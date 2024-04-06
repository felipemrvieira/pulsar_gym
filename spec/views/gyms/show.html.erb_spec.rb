require 'rails_helper'

RSpec.describe "gyms/show", type: :view do
  before(:each) do
    assign(:gym, Gym.create!(
      name: "Name",
      email: "Email",
      logo: "Logo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Logo/)
  end
end
