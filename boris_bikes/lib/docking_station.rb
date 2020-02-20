

class DockingStation

	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		fail "No bikes available" if @bikes.empty?
		@bikes.pop
	end

	def dock_bike(bike)
		fail "Docking station full" if @bikes.count >=20
		@bikes << bike
	end
end