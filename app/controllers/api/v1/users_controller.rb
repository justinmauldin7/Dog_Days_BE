class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(name: params[:name],
                       email: params[:email],
                       password: params[:password],
                       password_confirmation: params[:password_confirmation])
    if user.save
      render json: user, status: 201
    else
      render json: {error: "401 Unauthorized"}, status: 401
    end
  end

  def index
    user = User.find_by(email: params[:email])
    if user
      render json: user
    else
      render json: {error: "401 Unauthorized"}, status: 401
    end
  end
end
