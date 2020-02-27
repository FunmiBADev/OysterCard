require "journey_log"

describe Journey_Log do
	let(:station) { double :station, zone: 1 }

	it "knows if a journey is not complete" do 
		expect(subject).not_to be_complete
		
	end
end
