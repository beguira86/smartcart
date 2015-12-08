class EdibleController < ApplicationController
  before_action :authenticate_user!

	def create
			@edible = current_user.home.edibles.new(necessity: params[:necessity] || false,
												 quantity: params[:quantity],
												 preferred: params[:preferred],
												 category: params[:category],
												 title: params[:title],
												 brand: params[:brand])

	
		# @edible = Edible.new(necessity: params[:necessity] || false,
		# 										 quantity: params[:quantity],
		# 										 preferred: params[:preferred],
		# 										 category: params[:category],
		# 										 title: params[:title],
		# 										 brand: params[:brand],
		# 										 house_id: params[:house_id])
		if @edible.save
			render "create.json.jbuilder", status: :created
		else
			render json: { errors: @edible.errors.full_messages },
        status: :unprocessable_entity
    end
	end

  def index
		if current_user.home
 		 	@edibles = current_user.home.edibles.all
#   @edibles = Edible.where(house_id: params[:id])
    	render "index.json.jbuilder", status: :ok
    else
    	render json: { error: "No home. Sad day." }, status: :homeless
    end
  end

	def edit
		@edible = Edible.find(params[:id])
		render "edit.json.jbuilder"
	end

	def update
		@edible = Edible.find(params[:id])
		@edible.update(necessity: params[:necessity] || false,
									 quantity: params[:quantity],
									 preferred: params[:preferred],
									 category: params[:category],
									 title: params[:title],
									 brand: params[:brand])
		render "edit.json.jbuilder"
	end

	def destroy
		@edible = Edible.find(params[:id])
		@edible.destroy
		render json: {success: "true"}, status: :ok
	end

	#add a category method to sort the edibles by category?

end