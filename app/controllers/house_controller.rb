class HouseController < ApplicationController
  before_action :authenticate_user!

	def create
		@house = current_user.houses.create(name: params[:name],
																		 		address: params[:address])

		if !@house.new_record? # UGGGGHHH. (If the house has been saved successfully.)
			@house.roommates.find_by!(user_id: current_user.id).update(primary: true)
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @edible.errors.full_messages },
        status: :unprocessable_entity
    end

	end













end