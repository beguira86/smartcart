class Grocery < ActiveRecord::Base
	belongs_to :house
	belongs_to :user

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

# @grocery = Grocery.find(2)
# @grocery.absolute

# @groceries = Grocery.with_brand("Kraft")