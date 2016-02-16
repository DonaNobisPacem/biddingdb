require 'rails_helper'

RSpec.describe "modes/index", type: :view do
  before(:each) do
    assign(:modes, [
      Mode.create!(
        :description => "Description"
      ),
      Mode.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of modes" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
