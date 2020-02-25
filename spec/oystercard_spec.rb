require "oystercard"

describe Oystercard do

	it "can check card balance" do 
		card = Oystercard.new
		expect(card.balance).to eq (0)

	end

	it "money can be loaded on the card" do 
		card = Oystercard.new
		expect(card).to respond_to(:load).with(1).argument
	end

	it "can topup the balance" do
		expect{ subject.load 5 }.to change{ subject.balance }.by 5
	end

	it "raises an error if balance exceeds £90" do
		max_bal = Oystercard::MAX_BAL
		subject.load(max_bal)
		expect{ subject.load 30 }.to raise_error "Max balance of #{max_bal} exceeded!"

	end

	it "Can deduct money from the card" do 
		card = Oystercard.new
		expect(card).to respond_to(:deduct).with(1).argument
	end

	it "Can deduct the balance" do 
		expect{ subject.deduct -5 }.to change{ subject.balance }.by 5
	end

	it "start off not in Journey" do 
		expect(subject).not_to be_in_journey
	end

	it "blocks starting Journey if below minimum balance" do 
		expect{ subject.touch_in }.to raise_error "Insuffcient balance to start Journey"
	end

	it "Can allow touch_in to start Journey" do 
		subject.load(5) 
		subject.touch_in
		expect{ subject.touch_out}.to change{ subject.balance }.by(-Oystercard::MIN_FARE)
		expect(subject).to be_in_journey
	end

	it "can allow touch_out to end Journey" do 
		subject.load(5)
		subject.touch_in
		expect{ subject.touch_out}.to change{ subject.balance }.by(-Oystercard::MIN_FARE)
		subject.touch_out
		expect(subject).not_to be_in_journey
	end

end