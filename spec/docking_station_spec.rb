require "docking_station"

RSpec.describe DockingStation do

  it "creates a new instance of the bike class" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it "returned docked bikes" do
    expect(subject.dock("shiny new bike")).to eq (["shiny new bike"])
  end

  it {is_expected.to respond_to(:bike)}

  it "raises an error - release_bike" do
    expect{subject.release_bike}.to raise_error(RuntimeError)
  end

  it "raises an error if dock is full" do
    20.times { subject.dock Bike.new }
    expect{subject.dock("shiny new bike")}.to raise_error(RuntimeError)
  end

  it "returns true if full" do
    20.times { subject.dock Bike.new }
    expect(subject.full?).to eq true
  end

  it "returns false if space available" do
    expect(subject.full?).to eq false
  end

end