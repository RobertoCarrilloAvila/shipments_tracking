class Tracking::Event
	
	attr_accessor :timestamp, :description

	# param [DateTime] params -> a hash containing the date and time of the event
	# param [String] params -> a hash containing the date and time of the event
	def initialize(params)
		params.transform_keys!(&:to_sym)
		@timestamp = DateTime.parse params[:timestamp]
		unless params[:status_exception_description].blank?
			@description = params[:status_exception_description]
		else
			@description = params[:event_description]
		end
	end

end