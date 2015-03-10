class Shop < ActiveRecord::Base
	# acts_as_copy_target
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates :chain, length: { maximum: 40 }
	validates :name, length: { maximum: 100 }
	validates :address, length: { maximum: 100 }
	validates :city, length: { maximum: 40 }
	validates :country_code, length: { maximum: 2 }

	validates :name, :presence => true
	validates :address, :presence => true
	validates :phone, :presence => true

end
