class Tracking::Response::Events
	
	attr_accessor :timestamp, :description

	# param [DateTime] params -> a hash containing the date and time of the event
	# param [String] params -> a hash containing the date and time of the event
	def initialize(params)
		params.transform_keys!(&:to_sym)
		@timestamp = params[:timestamp]
		@description = params[:description]
	end

end