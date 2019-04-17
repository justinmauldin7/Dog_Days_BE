class Api::V1::DogsController < ApplicationController
  def index
    user = User.find_by(id: params[:user_id])
    if user && user.dogs.count > 0
      render json: user.dogs
    else
      render json: {error: "401 Unauthorized"}, status: 401
    end
  end

  def create
    user = User.find_by(id: params[:user_id])
    if user
      render json: Dog.create(user: user, breed: params[:breed], image: params[:image])
    else
      render json: {error: "401 Unauthorized"}, status: 401
    end
  end

  def destroy
    user = User.find_by(id: params[:user_id])
    if user
      Dog.delete(params[:id])
      render json: {success: "Dog id number #{params[:id]} has been deleted from user_id #{user.id}"}, status: 200
    else
      render json: {error: "401 Unauthorized"}, status: 401
    end
  end
end
