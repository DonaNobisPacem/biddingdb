require 'rails_helper'

RSpec.describe Mode, type: :model do
  it "has a valid factory" do
  	expect( FactoryGirl.build(:mode) ).to be_valid
  end

  describe "ActiveModel Validations" do
  	it { should validate_presence_of(:description) }
  	it { should validate_uniqueness_of(:description) }
  end
end