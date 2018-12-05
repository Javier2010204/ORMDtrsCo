class Client < ApplicationRecord
	include AASM

	aasm column: "state" do 
		state :pending, initial: true
		state :active
		state :denied

		event :accepted do
			transitions from: [:pending, :contacted, :denied], to: [:active]
		end

		event :rejected do
			transitions from: [:pending, :contacted, :active], to: [:denied]
		end
	end
end
