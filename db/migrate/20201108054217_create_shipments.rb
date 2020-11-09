class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.string  :tracking_number, 	null: false
      t.string  :carrier, 					null: false
      t.integer :status, 						null: false,	default: 0
      t.string  :description, 			null: false

      t.timestamps
    end
  end
end
