require "bike"

describe Bike do
it "responds to working?" do
		expect(subject).to respond_to :working?
	end

it " responds to dock bike" do
	expect(subject).respond_to? :dock_bike
end

end