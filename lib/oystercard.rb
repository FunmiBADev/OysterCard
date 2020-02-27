
class Oystercard
	attr_reader :balance, :entry_station, :exit_station, :journeys
	MAX_BAL = 90
	MIN_BAL = 3.50
	MIN_FARE = 4.75
	

	def initialize(max_bal = MAX_BAL, min_bal = MIN_BAL, min_fare = MIN_FARE)
		@balance = 0
		@max_bal = max_bal 
		@min_bal = min_bal
		@min_fare = min_fare
		@journeys = []

	end

	def balance()
		@balance
	end

	def load(money)
		fail "Max balance of #{@max_bal} exceeded!" if money + balance > MAX_BAL
		@balance += money
	 end

	 def deduct(money)
	  @balance -= money
	 	
	 end

	def touch_in(entry_station)
	 	fail "Insuffcient balance to start Journey" if balance < MIN_FARE
	 	 # @start_trip = true
	 	 @entry_station = entry_station
	 	

	end

	def touch_out(exit_station)
		deduct(MIN_FARE)
	 	# @start_trip = false
	 	@entry_station = entry_station
	 	@exit_station = exit_station
	 	@journeys.push( {entry_station: entry_station, exit_station: exit_station})
	 	@entry_station = nil


	end

	
	def in_journey?
	 	# @start_trip
	   # @start_trip ? true : false
	   !!entry_station
	end


end