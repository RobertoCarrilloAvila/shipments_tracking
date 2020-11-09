module Tracking::Fedex::Utils
	
	CARRIER = 'FEDEX'
	TRACKING_STATUS = {
		# Movement
		'AA' => 'ON_TRANSIT', # At Airport
		'AC' => 'ON_TRANSIT', # At Canada Post facility
		'AD' => 'ON_TRANSIT', # At Delivery
		'AF' => 'ON_TRANSIT', # At FedEx Facility
		'AP' => 'ON_TRANSIT', # At Pickup
		'AR' => 'ON_TRANSIT', # Arrived at
		'AX' => 'ON_TRANSIT', # At USPS facility
		'CA' => 'EXCEPTION', # Shipment Cancelled
		'CH' => 'ON_TRANSIT', # Location Changed
		'DD' => 'ON_TRANSIT', # Delivery Delay
		'DE' => 'EXCEPTION', # Delivery Exception
		'DL' => 'DELIVERED', # Delivered
		'DP' => 'ON_TRANSIT', # Departed
		'DR' => 'ON_TRANSIT', # Vehicle furnished but not used
		'DS' => 'ON_TRANSIT', # Vehicle Dispatched
		'DY' => 'ON_TRANSIT', # Delay
		'EA' => 'ON_TRANSIT', # Enroute to Airport
		'ED' => 'ON_TRANSIT', # Enroute to Delivery
		'EO' => 'ON_TRANSIT', # Enroute to Origin Airport
		'EP' => 'ON_TRANSIT', # Enroute to Pickup
		'FD' => 'ON_TRANSIT', # At FedEx Destination
		'HL' => 'ON_TRANSIT', # Hold at Location
		'IT' => 'ON_TRANSIT', # In Transit
		'IX' => 'ON_TRANSIT', # In transit (see Details)
		'LO' => 'ON_TRANSIT', # Left Origin
		'OC' => 'CREATED', # Order Created
		'OD' => 'ON_TRANSIT', # Out for Delivery
		'OF' => 'ON_TRANSIT', # At FedEx origin facility
		'OX' => 'CREATED', # Shipment information sent to USPS
		'PD' => 'ON_TRANSIT', # Pickup Delay
		'PF' => 'ON_TRANSIT', # Plane in Flight
		'PL' => 'ON_TRANSIT', # Plane Landed
		'PM' => 'ON_TRANSIT', # In Progress
		'PU' => 'ON_TRANSIT', # Picked Up
		'PX' => 'ON_TRANSIT', # Picked up (see Details)
		'RR' => 'EXCEPTION', # CDO
		'RM' => 'EXCEPTION', # CDO
		'RC' => 'EXCEPTION', # CDO
		'RS' => 'ON_TRANSIT', # Return to Shipper
		'RP' => 'CREATED', # Return label link emailed to return sender
		'LP' => 'EXCEPTION', # Return label link cancelled by shipment originator
		'RG' => 'EXCEPTION', # Return label link expiring soon
		'RD' => 'EXCEPTION', # Return label link expired
		'SE' => 'EXCEPTION', # Shipment Exception
		'SF' => 'ON_TRANSIT', # At Sort Facility
		'SP' => 'ON_TRANSIT', # Split Status
		'TR' => 'ON_TRANSIT', # Transfer

		# Regunlatory
		'CC' => 'ON_TRANSIT', # Cleared Customs
		'CD' => 'EXCEPTION', # Clearance Delay
		'CP' => 'ON_TRANSIT', # Clearance in Progress
		# 'EA' => 'ON_TRANSIT', # Export Approved
		# 'SP' => 'ON_TRANSIT', # Split Status

		# Posession
		# 'CA' => '', # Carrier
		# 'RC' => '', # Recipient
		# 'SH' => '', # Shipper
		# 'CU' => '', # Customs
		# 'BR' => '', # Broker
		# 'TP' => '', # Transfer Partner
		# 'SP' => '', # Split status
	}

end