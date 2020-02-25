
class Oystercard
	attr_reader :balance
	MAX_BAL = 90
	MIN_BAL = 3.50
	MIN_FARE = 4.75


	def initialize(max_bal = MAX_BAL, min_bal = MIN_BAL, min_fare = MIN_FARE)
		@balance = 0
		@max_bal = max_bal 
		@min_bal = min_bal
		@min_fare = min_fare
		# @start_trip = false

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

	 	 def touch_in
	 	 fail "Insuffcient balance to start Journey" if balance < MIN_BAL
	 	 @start_trip = true

	 end

	 	 def touch_out
	 	@start_trip = false

	 end

	
	 def in_journey?
	 	@start_trip
	   # @start_trip ? true : false
	 end




end