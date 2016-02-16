require 'rails_helper'

RSpec.describe "bids/edit", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :title => "MyString",
      :contractor => "MyString",
      :number => 1,
      :members => "MyText",
      :remarks => "MyText"
    ))
  end

  it "renders the edit bid form" do
    render

    assert_select "form[action=?][method=?]", bid_path(@bid), "post" do

      assert_select "input#bid_title[name=?]", "bid[title]"

      assert_select "input#bid_contractor[name=?]", "bid[contractor]"

      assert_select "input#bid_number[name=?]", "bid[number]"

      assert_select "textarea#bid_members[name=?]", "bid[members]"

      assert_select "textarea#bid_remarks[name=?]", "bid[remarks]"
    end
  end
end
