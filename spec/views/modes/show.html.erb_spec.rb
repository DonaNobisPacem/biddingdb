require 'rails_helper'

RSpec.describe "modes/show", type: :view do
  before(:each) do
    @mode = assign(:mode, Mode.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
