require_relative "journey_log"
require_relative "oystercard"


class Station
	attr_reader :name, :zone 


	def initialize (name:name, zone:zone)
		@name = name
		@zone = zone
		
	end

end