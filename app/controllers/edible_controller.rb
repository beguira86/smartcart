class EdibleController < ApplicationController
  before_action :authenticate_user!

  # def update_quantity(item)
  # 	current_value = item.quantity
  # 	added_value = params[:quantity].to_i
  # 	new_value = current_value + added_value
  # 	new_value
  # end

  def create
		@edible = current_user.home.edibles.find_or_create_by!(title: params[:title]) do |edible|
												 edible.quantity = params[:quantity]
												 edible.preferred = params[:preferred]
												 edible.category = params[:category]
												 edible.necessity = params[:necessity] || false
												 edible.brand = params[:brand]
												end

		@edible.update(quantity: update_quantity(@edible) || @edible.quantity,
															preferred: params[:preferred] || @edible.preferred,
															category: params[:category] || @edible.category,
															title: params[:title] || @edible.title,
															brand: params[:brand] || @edible.brand,
															necessity: params[:necessity] || @edible.necessity)
	# def create
	# 		@edible = current_user.home.edibles.find_or_create_by!(title: params[:title]) do |edible|
	# 											 edible.quantity = params[:quantity]
	# 											 edible.preferred = params[:preferred]
	# 											 edible.category = params[:category]
	# 											 edible.necessity = params[:necessity] || false
	# 											 edible.brand = params[:brand]
	# 											end
# def create
# 			@edible = current_user.home.edibles.create_with(quantity: params[:quantity],
# 																					  				 	preferred: params[:preferred],
# 																									  	category: params[:category],
# 																							  			brand: params[:brand]).find_or_create_by(title: params[:title])

# Find the first user named "Scarlett" or create a new one with a
# different last name.
			# User.find_or_create_by(first_name: 'Scarlett') do |user|
			#   user.last_name = 'Johansson'
			# end
# => #<User id: 2, first_name: "Scarlett", last_name: "Johansson">

	# def create
	# 		@edible = current_user.home.edibles.new(necessity: params[:necessity] || false,
	# 											 quantity: params[:quantity],
	# 											 preferred: params[:preferred],
	# 											 category: params[:category],
	# 											 title: params[:title],
	# 											 brand: params[:brand])

	
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