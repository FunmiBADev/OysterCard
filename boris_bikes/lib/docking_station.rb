

class DockingStation

	attr_reader :bikes
	attr_accessor :capacity

	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity

	end

	def release_bike
<<<<<<< HEAD
		fail "No bikes available" if empty?
		fail 'Faulty bike try another if available' if @bike.broken?
		bikes.pop

	end

	def dock_bike(bike)
		fail "Docking station full" if full?
=======
		fail  "No bikes available" unless @bike
		@bike 
	end

	def dock_bike(bike)
		fail "Docking station full" if @bike
>>>>>>> c98dc58decaa9eb033aacaf7347305836091fc80
		@bike = bike
		bikes << bike
		
	end

	private

	

	def full?
		bikes.count >= capacity
	end

	def empty?
		bikes.count <=0
	end
end