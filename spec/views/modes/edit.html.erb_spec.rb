require 'rails_helper'

RSpec.describe "modes/edit", type: :view do
  before(:each) do
    @mode = assign(:mode, Mode.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit mode form" do
    render

    assert_select "form[action=?][method=?]", mode_path(@mode), "post" do

      assert_select "input#mode_description[name=?]", "mode[description]"
    end
  end
end
