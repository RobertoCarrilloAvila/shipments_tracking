shipments = [
	{
		"tracking_number": "449044304137821",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "149331877648230",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "020207021381215",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "403934084723025",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "920241085725456",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "568838414941",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "039813852990618",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "231300687629630",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "797806677146",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "377101283611590",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "852426136339225",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "797615467620",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "957794015041323",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "076288115212522",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "581190049992",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "122816215025810",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "843119172384577",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "070358180009382",
		"carrier": "FEDEX"
	},
	{
		"tracking_number": "713062653486",
		"carrier": "FEDEX"
	}
]

shipments.each do |shipment|
	Shipment.create(tracking_number: shipment[:tracking_number], carrier: shipment[:carrier])
end
