require 'spec_helper'

describe Weight do

  let(:user) { FactoryGirl.create(:user) }
  before { @weight = user.weights.build(date: Date.new, weight: 195.5) }

  subject { @weight }

  it { should respond_to(:date) }
  it { should respond_to(:user_id) }
  it { should respond_to(:weight) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @weight.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank weight" do
    before { @weight.weight = " " }
    it { should_not be_valid }
  end

  describe "with blank date" do
    before { @weight.date = " " }
    it { should_not be_valid }
  end
end
