class RecipeController < ApplicationController
  before_action :authenticate_user!

  def search
  	instance = FlourPower.new
  	@recipes = instance.search(params[:query])

  end

  def select
  	instance = FlourPower.new
  	@recipe = instance.select(params[:id])
  end

  # def add
  # 	###LKDNFLKSDNFLKSDNFLKSDF
  # end


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