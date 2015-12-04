class HouseController < ApplicationController
  before_action :authenticate_user!

	def create
		@house = current_user.houses.create(name: params[:name],
																		    address: params[:address])
#		@house = House.new(name: params[:name],
#											 address: params[:address])
		if @house.save
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @edible.errors.full_messages },
        status: :unprocessable_entity
    end

	end













end