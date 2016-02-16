require 'rails_helper'

RSpec.describe "bids/new", type: :view do
  before(:each) do
    assign(:bid, Bid.new(
      :title => "MyString",
      :contractor => "MyString",
      :number => 1,
      :members => "MyText",
      :remarks => "MyText"
    ))
  end

  it "renders new bid form" do
    render

    assert_select "form[action=?][method=?]", bids_path, "post" do

      assert_select "input#bid_title[name=?]", "bid[title]"

      assert_select "input#bid_contractor[name=?]", "bid[contractor]"

      assert_select "input#bid_number[name=?]", "bid[number]"

      assert_select "textarea#bid_members[name=?]", "bid[members]"

      assert_select "textarea#bid_remarks[name=?]", "bid[remarks]"
    end
  end
end
