class GroceryController < ApplicationController
  before_action :authenticate_user! 

  def create
		@grocery = current_user.home.groceries.find_by(title: params[:title])
		if @grocery.nil?
			 @grocery = current_user.home.groceries.create(necessity: params[:necessity] || false,
										 quantity: params[:quantity],
										 preferred: params[:preferred],
										 category: params[:category],
										 title: params[:title],
										 brand: params[:brand])
		else
			 @grocery.update(quantity: update_quantity(@grocery) || @grocery.quantity,
										 preferred: params[:preferred] || @grocery.preferred,
										 category: params[:category] || @grocery.category,
										 title: params[:title] || @grocery.title,
										 brand: params[:brand] || @grocery.brand,
			 							 necessity: params[:necessity] || @grocery.necessity)
		end

		if @grocery.save
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @grocery.errors.full_messages },
        status: :unprocessable_entity
    end
	end

  def index
  	@groceries = current_user.home.groceries.all
#   @groceries = Grocery.where(house_id: params[:id])
    render "index.json.jbuilder", status: :ok
  end

	def edit
		@grocery = Grocery.find(params[:id])
		render "edit.json.jbuilder", status: :ok
	end

	def update
		@grocery = Grocery.find(params[:id])
		@grocery.update(necessity: params[:necessity] || false,
									  quantity: params[:quantity],
									  preferred: params[:preferred],
									  category: params[:category],
									  title: params[:title],
									  brand: params[:brand])
		render "edit.json.jbuilder", status: :ok
	end

	def destroy
		@grocery = Grocery.find(params[:id])
		@grocery.destroy
		render json: {success: "true"}, status: :ok
	end

end


####CODE GRAVEYARD
# 	@grocery.assign_attributes(quantity: update_quantity(@grocery) || @grocery.quantity,
# 															preferred: params[:preferred] || @grocery.preferred,
# 															category: params[:category] || @grocery.category,
# 															title: params[:title] || @grocery.title,
# 															brand: params[:brand] || @grocery.brand,
# 															necessity: params[:necessity] || @grocery.necessity)
# @grocery = current_user.home.groceries.find_or_create_by!(title: params[:title])
		# @grocery.update_attributes(quantity: params[:quantity])

			# @grocery = current_user.home.groceries.new(necessity: params[:necessity] || false,
			# 									 quantity: params[:quantity],
			# 									 preferred: params[:preferred],
			# 									 category: params[:category],
			# 									 title: params[:title],
			# 									 brand: params[:brand])	

		# @grocery = Grocery.new(necessity: params[:necessity] || false,
		# 								   		 quantity: params[:quantity],
		# 									  	 preferred: params[:preferred],
		# 										   category: params[:category],
		# 			  							 title: params[:title],
		# 				  						 brand: params[:brand],
		# 					  					 house_id: params[:house_id])