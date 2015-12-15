class RecipeController < ApplicationController
  before_action :authenticate_user!

  def search
  	recipes = FlourPower.new
  	results = recipes.search(params[:query])
  end



  private
  def search_params
    params.permit(:query)
  end

  def recipe_params
  	params.permit(:id)
  end

end