
class Oystercard
	attr_reader :balance
	MAX_BAL = 90


	def initialize
		@balance = 0

	end

	def balance()
		@balance
	end

	def load(money)
		fail "Max balance exceeded!" if money + balance > MAX_BAL
		@balance += money
	 end


end