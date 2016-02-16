require 'rails_helper'

RSpec.describe Bid, type: :model do
  it "has a valid factory" do
  	expect( FactoryGirl.build(:bid) ).to be_valid
  end

  describe "ActiveModel Validations" do
  	it { should validate_presence_of(:title) }
  	it { should validate_presence_of(:contractor) }
  	it { should validate_presence_of(:number) }
  	it { should validate_numericality_of(:number).is_greater_than_or_equal_to(0) }
  	it { should validate_presence_of(:mode) }
  	it { should validate_numericality_of(:mode).is_greater_than(0) }
  end
end
