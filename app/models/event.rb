class Event < ApplicationRecord
  
  # Associations
  belongs_to :shipment

  # Validates
	validates :shipment, :description, presence: true

end
