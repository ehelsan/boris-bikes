require 'docking_station'

describe DockingStation do
  let (:bike) {DockingStation.new}

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to respond_to(:working?)
  end

  it 'docks bikes' do
    expect(bike).to respond_to(:dock)
  end

  it 'sees bikes at dock' do
    expect(bike.dock(bike)).to eq bike
  end 

end

