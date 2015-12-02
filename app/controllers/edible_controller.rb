class EdibleController < ApplicationController

	def create
		@edible = Edible.new(item: params[:item],
												 quantity: params[:quantity],
												 preferred: params[:preferred],
												 category: params[:category])
		if @edible.save
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @edible.errors.full_messages },
        status: :unprocessable_entity
    end

	end

	def edit
		@edible = Edible.find(params[:id])
		render "edit.json.jbuilder"
	end

	def update
		@edible = Edible.find(params[:id])
		@edible.update(item: params[:item],
									 quantity: params[:quantity],
									 preferred: params[:preferred],
									 category: params[:category])
		render "edit.json.jbuilder"
	end

	#add a category method to sort the edibles by category?

end