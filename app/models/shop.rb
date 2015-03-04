class Shop < ActiveRecord::Base
	# acts_as_copy_target
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
