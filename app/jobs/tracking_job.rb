class TrackingJob < ApplicationJob
  queue_as :shipment_tracking

  after_perform do |job|
    if ['CREATED', "ON_TRANSIT"].include? @shipment.status
    	self.class.set(wait: 10.minutes).perform_later(@shipment.id)
    end
  end

  def perform(shipment_id)
    @shipment = Shipment.find(shipment_id)
    tracking_response = Tracking.new(@shipment.tracking_number, @shipment.carrier).tracking_info
    update_record(tracking_response)
  end

  private

  def update_record(tracking_response)
  	ActiveRecord::Base.transaction do
	    @shipment.update({
	    	status: tracking_response.status,
	    	description: tracking_response.description
	    })
	    
	    @shipment.events.destroy_all

	    events_list = tracking_response.events.map { |event| {description: event.description, created_at: event.timestamp} }
	    @shipment.events.create(events_list)
    end
  end
end
