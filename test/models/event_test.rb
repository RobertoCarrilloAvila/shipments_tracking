require 'test_helper'

class EventTest < ActiveSupport::TestCase
  
  setup do
    @event = events(:one)
  end

  test 'empty Event fields' do
  	event = Event.new
  	event.valid?
  	assert event.errors.messages.keys == [:shipment, :description]
  end

  test 'not empty Event fields' do
  	assert @event.valid?
  end

end
