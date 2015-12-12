class Edible < ActiveRecord::Base
	belongs_to :house
	belongs_to :user

	def absolute
		return nil if self.preferred.nil?
	  if self.quantity < self.preferred
	    self.preferred - self.quantity
	  end
	end



end