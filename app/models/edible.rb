class Edible < ActiveRecord::Base
	belongs_to :house
	belongs_to :user
	validates_uniqueness_of :title, scope: :brand

	# def self.with_brand(brand)
	# 	where(brand: brand)
	# end

	def absolute
		return nil if self.preferred.nil?
	  if self.quantity < self.preferred
	    self.preferred - self.quantity
	  end
	end



end