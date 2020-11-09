class Tracking::Fedex
	include Tracking::Fedex::Utils

	def initialize(tracking_number)
		@tracking_number = tracking_number
		@fedex = Fedex::Shipment.new(fedex_credentials)
	end

	def request
		request_handler
		response = Tracking::Response.new(@details)
		response.events.concat @events
		return response
	end

	private

	def request_handler
		retry_count = 0
		begin
			# Send the request to fedex api
			result = @fedex.track(tracking_number: @tracking_number)
			request_response = result.first
			response_formatter(request_response)
		rescue Fedex::RateError => err
			if err.message == 'This tracking number cannot be found. Please check the number or contact the sender.'
				@details = {
					tracking_number: @tracking_number,
					carrier: CARRIER,
					status: 'EXCEPTION',
					description: err.message
				}
				@events = []
				return
			end

			# Retry 5 times before reraise the exception
			retry_count += 1
			retry if retry_count < 5
			raise err.class, err.message
		end
	end

	def response_formatter(request_response)
		request_details = request_response.details
		request_notification = request_details[:notification]
		@details = {
			tracking_number: @tracking_number,
			carrier: CARRIER,
			status: TRACKING_STATUS[request_response.status_code],
			description: request_response.status
		}

		if request_details[:events].is_a?(Array)
			@events = request_details[:events].map { |event| Tracking::Event.new(event) }
		else
			@events = []
			@events << Tracking::Event.new(request_details[:events])
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