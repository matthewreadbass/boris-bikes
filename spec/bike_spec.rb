require "bike"

RSpec.describe Bike do
  it "responds to .working?" do
    expect(subject.working?).to eq true
  end
end