require "docking_station"

RSpec.describe DockingStation do

  it "creates a new instance of the bike class" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it "returned docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it {is_expected.to respond_to(:bike)}

  it "raises an error - bike_available?" do
    expect {subject.bike_available?}.to raise_error(NoMethodError)
  end

  it "raises an error - release_bike" do
    expect{subject.release_bike}.to raise_error(RuntimeError)
  end

end