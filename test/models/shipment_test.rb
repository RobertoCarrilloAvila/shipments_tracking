require 'test_helper'

class ShipmentTest < ActiveSupport::TestCase
  
	setup do
    @shipment = shipments(:one)
  end

  test 'empty Shipment fields' do
  	shipment = Shipment.new
  	shipment.valid?
  	assert shipment.errors.messages.keys == [:tracking_number, :carrier]
  end

  test 'not empty Shipment fields' do
  	assert @shipment.valid?
  end

  test 'invalid status enum' do
  	assert_raise do
  		Shipment.new(status: 5)
  	end
  end

end
