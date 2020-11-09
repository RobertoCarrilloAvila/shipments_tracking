class ApplicationController < ActionController::Base
	
	skip_before_action :verify_authenticity_token
	before_action :authenticate

	private

	def authenticate
    authenticate_or_request_with_http_token do |token, options|
      ActiveSupport::SecurityUtils.secure_compare(token, ENV['BEARER_TOKEN'])
    end
  end

end
