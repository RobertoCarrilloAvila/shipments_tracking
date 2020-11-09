class Shipment < ApplicationRecord

	STATUSES = [:CREATED, :ON_TRANSIT, :DELIVERED, :EXCEPTION]
	enum status: STATUSES

	# Validates
	validates :tracking_number, :carrier, :status, :description, presence: true

end
