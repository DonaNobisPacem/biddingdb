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
    it { should validate_presence_of(:budget) }
    it { should validate_numericality_of(:budget).is_greater_than_or_equal_to(0) }
    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount).is_greater_than_or_equal_to(0) }

    context "Procured via Public Bidding" do
      before(:each) { allow(subject).to receive(:is_public_bidding?).and_return(true) }

      it { should validate_presence_of(:preprocurement) }
      it { should validate_presence_of(:prebidding) }
      it { should validate_presence_of(:bidding) }
      it { should validate_presence_of(:postqualification) }
      it { should validate_presence_of(:noa) }
      it { should validate_presence_of(:purchase) }
      it { should validate_presence_of(:ntp) }
      it { should validate_presence_of(:members) }
    end

    context "Other modes of procurement" do
      before(:each) { allow(subject).to receive(:is_public_bidding?).and_return(false) }

      it { should_not validate_presence_of(:preprocurement) }
      it { should_not validate_presence_of(:prebidding) }
      it { should_not validate_presence_of(:bidding) }
      it { should_not validate_presence_of(:postqualification) }
      it { should_not validate_presence_of(:noa) }
      it { should_not validate_presence_of(:purchase) }
      it { should_not validate_presence_of(:ntp) }
      it { should_not validate_presence_of(:members) }
    end
  end
end
