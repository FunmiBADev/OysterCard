
class Oystercard
	attr_reader :balance


	def initialize
		@balance = 0

	end

	def balance()
		@balance
	end

	def load(money)
		balance = balance += money
	end




end