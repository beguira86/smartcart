class RegistrationsController < ApplicationController

  def create
    @user = User.new(username: params[:username],
                     password: params[:password],
                     email:    params[:email])
    if @user.save
    #  WelcomeMailer.welcome(@user).deliver_now
      render "create.json.jbuilder", status: :created

    else
      render json: { errors: @user.errors.full_messages },
        status: :unprocessable_entity

    end
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render "login.json.jbuilder", status: :ok
      # render json: { user: @user }, status: :ok
    else
      render json: { error: "Could not find user for #{params[:username]} or wrong password." },
        status: :unauthorized
    end
  end

  def logout
    current_user = nil
    redirect_to root
  end

  def destroy
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      @user.destroy
    else
      render json: { error: "Invalid email (#{params[:email]}) or password." },
        status: :unauthorized
    end
  end
end