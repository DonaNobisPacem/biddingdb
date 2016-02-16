require 'rails_helper'

RSpec.describe "modes/new", type: :view do
  before(:each) do
    assign(:mode, Mode.new(
      :description => "MyString"
    ))
  end

  it "renders new mode form" do
    render

    assert_select "form[action=?][method=?]", modes_path, "post" do

      assert_select "input#mode_description[name=?]", "mode[description]"
    end
  end
end
