require 'test_helper'

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get shipments_url
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post shipments_url, params: { shipment: { carrier: @shipment.carrier, description: @shipment.description, status: @shipment.status, tracking_number: @shipment.tracking_number } }
    end

    assert_response :success
  end

  test "should show shipment" do
    get shipment_url(@shipment)
    assert_response :success
  end

  test "should update shipment" do
    patch shipment_url(@shipment), params: { shipment: { carrier: @shipment.carrier, description: @shipment.description, status: @shipment.status, tracking_number: @shipment.tracking_number } }
    assert_response :success
  end
end
