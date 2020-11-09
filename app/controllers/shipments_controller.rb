class ShipmentsController < ApplicationController
  before_action :set_shipment, only: [:show, :edit, :update, :destroy]

  # GET /shipments
  # GET /shipments.json
  def index
    @shipments = Shipment.all
    render json: @shipments
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
    @shipment.call_tracking_job unless @shipment.exist_in_queue?
    render json: @shipment
  end

  # POST /shipments
  # POST /shipments.json
  def create
    @shipment = Shipment.new(shipment_params)

    if @shipment.save
      render json: @shipment
    else
      render json: @shipment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shipments/1
  # PATCH/PUT /shipments/1.json
  def update
    if @shipment.update(shipment_params)
      render json: @shipment
    else
      render json: @shipment.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_params
      params.require(:shipment).permit(:tracking_number, :carrier, :status, :description)
    end
end
