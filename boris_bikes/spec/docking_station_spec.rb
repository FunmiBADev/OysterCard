require "docking_station"

describe DockingStation do
it { is_expected.to respond_to :release_bike }

# it ' releases working bikes' do
# 	bike = subject.release_bike
# 	expect(bike).to be_working
# 	end

describe "#release_bike" do
it " raises an error when there are no bike available" do
	# lets not dock a bike 1st, rem Subject == DockingStation.new
	expect {subject.release_bike}.to raise_error "No bikes available"
end

it 'does not release broken bikes' do
	bike = double(:bike, broken?: true)
	# allow(bike).to receive(:broken?).and_return(true)
	subject.dock_bike bike
	expect { subject.release_bike }.to raise_error "Faulty bike try another if available"
end

it 'releases a working bike' do
	bike = double(:bike, broken?: false)
	# allow(bike).to receive(:broken?).and_return(false)
	subject.dock_bike bike
	expect(subject.release_bike).to eq bike
end
end

<<<<<<< HEAD
describe "#dock_bike" do
	it "raises an error when full" do
		subject.capacity.times do
			subject.dock_bike double :bike
		end
		expect{ subject.dock_bike double :bike }.to raise_error "Docking station full"
	end
=======
describe "#dock_bike" do 
	it "raises an error when full" do
		20.times { subject.dock_bike Bike.new }
		expect { subject.dock_bike Bike.new }.to raise_error "Docking station full"
	end
end


it { is_expected.to respond_to(:dock_bike).with(1).argument }

it "docks something" do
	bike = Bike.new
	# we want to return the bike to the docking station
	expect(subject.dock_bike(bike)).to eq (bike)
>>>>>>> c98dc58decaa9eb033aacaf7347305836091fc80
end

it { is_expected.to respond_to(:dock_bike).with(1).argument }
it "docks something" do
	bike = double :bike
	# we want to return the bike to the docking station
	expect(subject.dock_bike (bike)).to eq [bike]
end

it { is_expected.to respond_to(:bikes) }
it "returns docked bikes" do
	bike = double :bike
	subject.dock_bike (bike)
	expect(subject.bikes).to eq [bike]
end
end