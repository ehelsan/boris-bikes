require 'docking_station'

describe DockingStation do
  let (:bike) {DockingStation.new}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when the dock is full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking Station FULL'
    end
  end

  it 'docks bikes' do
    expect(bike).to respond_to(:dock)
  end

  it 'sees bikes at dock' do
    expect(bike.dock(bike)).to eq [bike]
  end

end
