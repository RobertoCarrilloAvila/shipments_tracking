class Tracking
	
	attr_reader	:tracking_number, :carrier
	
	def initialize(tracking_number, carrier)
		@tracking_number = tracking_number
		@carrier = carrier
	end

	def tracking_info
		raise NotImplementedError, 'Unsupported carrier' unless self.class.private_method_defined? @carrier.underscore
		send(@carrier.underscore)
	end

	private

	def fedex
		Tracking::Fedex.new(@tracking_number).request
	end

end