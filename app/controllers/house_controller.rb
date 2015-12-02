class HouseController < ApplicationController

	def create
		@house = House.new(name: params[:name]
											 address: params[:address])
		if @house.save
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @edible.errors.full_messages },
        status: :unprocessable_entity
    end

	end













end