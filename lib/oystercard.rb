
class Oystercard
	attr_reader :balance
	MAX_BAL = 90


	def initialize(max_bal = MAX_BAL)
		@balance = 0
		@max_bal = max_bal

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

	 def in_journey?
	 	false
	 end


end