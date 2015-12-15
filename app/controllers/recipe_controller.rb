class RecipeController < ApplicationController
  before_action :authenticate_user!, only: [:add]

  def search
  	instance = Flourpower.new
  	@recipes = instance.search(params[:query])
    render json: @recipes
  end

  def select
  	instance = Flourpower.new
  	@recipe = instance.select(params[:id])
  end

  def add
  	@recipe = current_user
  end

  private
  def search_params
    params.permit(:query)
  end

  def select_params
  	params.permit(:id)
  end

  # def add_params
  # 	###SDKJFLSKDJFLSKDJFSDFDS
  # end
end