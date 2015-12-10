class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
  	token = request.headers["Access-Token"]
  	token && User.find_by(access_token: token)
  end

  def authenticate_user!
  	unless current_user
	  	token = request.headers["Access-Token"]
	  	render json: {error: "Could not authenticate with token '#{token}'"},
	  	status: :unauthorized
	  end
  end
  
  def update_quantity(item)
    current_value = item.quantity
    added_value = params[:quantity].to_i
    new_value = current_value + added_value
    new_value
  end

  # rescue_from ActiveRecord::RecordNotFound do | error |
  #     render json: {error: "There was a problem! #{error.message}" },
  #     status: :not_found
  # end

  # rescue_from ActiveRecord::RecordInvalid do |error|
  #   render json: { error: "Could not find object: #{error.message}" },
  #     status: :unproccessable_entity
  # end
end