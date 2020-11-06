class Tracking::Response

	attr_accessor :tracking_number, :carrier, :status, :description
	attr_reader :events
	
	# param [String] tracking_number -> a string containing the tracking number
	# param [String] carrier -> a string containing the carrier name
	# param [String] status -> a string containing the status of the tracking
	def initialize(params = {})
		params.transform_keys!(&:to_sym)
		@tracking_number = params[:tracking_number]
		@carrier = params[:carrier]
		@status = params[:status]
		@description = params[:description]
		@events = []
	end

end