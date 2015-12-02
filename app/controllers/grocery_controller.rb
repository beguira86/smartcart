class GroceryController < ApplicationController
  #before_action :authenticate_user!, except: [:index]

	def create
		@grocery = Grocery.new(necessity: params[:necessity],
										   		 quantity: params[:quantity],
											  	 preferred: params[:preferred],
												   category: params[:category],
					  							 title: params[:title],
						  						 brand: params[:brand],
							  					 house_id: params[:house_id])
		if @grocery.save
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @grocery.errors.full_messages },
        status: :unprocessable_entity
    end
	end

  def index
    @groceries = Grocery.all
    render "index.json.jbuilder"
  end

	def edit
		@grocery = Grocery.find(params[:id])
		render "edit.json.jbuilder"
	end

	def update
		@grocery = Grocery.find(params[:id])
		@grocery.update(necessity: params[:necessity],
									  quantity: params[:quantity],
									  preferred: params[:preferred],
									  category: params[:category],
									  title: params[:title],
									  brand: params[:brand],
 									  house_id: params[:house_id])
		render "edit.json.jbuilder"
	end

	def destroy
		@grocery = Grocery.find_by(grocery_id: params[:id])
	end

	#add a category method to sort the edibles by category?

end