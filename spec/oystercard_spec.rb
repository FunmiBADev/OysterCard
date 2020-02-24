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
end