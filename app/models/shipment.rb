class Shipment < ApplicationRecord

	STATUSES = [:CREATED, :ON_TRANSIT, :DELIVERED, :EXCEPTION]

	# Associations
	has_many :events

	# Enums
	enum status: STATUSES

	# Validates
	validates :tracking_number, :carrier, :status, presence: true

	# Callbacks
	after_create :call_tracking_job

	private

	def call_tracking_job
		TrackingJob.set(wait: 10.minutes).perform_later(self.id)
	end

end
