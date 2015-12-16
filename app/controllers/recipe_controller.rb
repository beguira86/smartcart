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
    binding.pry
    render json: @recipe
  end

  # def add
  # 	instance = Flourpower.new
  #   @recipe = instance.select(params[:id])
  #   @recipe.each do |x|
  #     x
  #   render json: { success: true }
  # end

  private
  def search_params
    params.permit(:query)
  end

  def select_params
  	params.permit(:id)
  end

end