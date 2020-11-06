class Tracking::Fedex
	
	def initialize(tracking_number)
		@tracking_number = tracking_number
		@fedex = Fedex::Shipment.new(fedex_credentials)
	end

	def request
		request_handler
		response = Tracking::Response.new(@result_info)
		response.events.concat @result_info['events']
	end

	private

	def request_handler
		retry_count = 0
		begin
			# Send the request to fedex api
			result = @fedex.track(tracking_number: @tracking_number)
			@result_info = result.first
		rescue Fedex::RateError => err
			# Retry 5 times before reraise the exception
			retry_count += 1
			retry if retry_count < 5
			raise err.class, err.message
		end
	end

	def fedex_credentials
		{
			key: ENV['FEDEX_KEY'],
			password: ENV['FEDEX_PASSWORD'],
			account_number: ENV['FEDEX_ACCOUNT_NUMBER'],
			meter: ENV['FEDEX_METER'],
			mode: ENV['FEDEX_MODE']
		}
	end

end