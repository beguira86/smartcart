class Grocery < ActiveRecord::Base
	belongs_to :house
	belongs_to :user

	# def self.with_brand(brand)
	# 	where(brand: brand)
	# end

	def absolute
		return self.quantity if self.preferred.nil?
	  if self.quantity < self.preferred
	    self.preferred - self.quantity
	  else
	  	self.quantity
	  end
	end

end

# @grocery = Grocery.find(2)
# @grocery.absolute

# @groceries = Grocery.with_brand("Kraft")