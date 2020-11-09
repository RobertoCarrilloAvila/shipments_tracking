class Shipment < ApplicationRecord

	STATUSES = [:CREATED, :ON_TRANSIT, :DELIVERED, :EXCEPTION]

	# Associations
	has_many :events

	# Enums
	enum status: STATUSES

	# Validates
	validates :tracking_number, :carrier, :status, :description, presence: true

end
