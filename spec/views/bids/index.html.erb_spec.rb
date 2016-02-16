require 'rails_helper'

RSpec.describe "bids/index", type: :view do
  before(:each) do
    assign(:bids, [
      Bid.create!(
        :title => "Title",
        :contractor => "Contractor",
        :number => 1,
        :members => "MyText",
        :remarks => "MyText"
      ),
      Bid.create!(
        :title => "Title",
        :contractor => "Contractor",
        :number => 1,
        :members => "MyText",
        :remarks => "MyText"
      )
    ])
  end

  it "renders a list of bids" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Contractor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
