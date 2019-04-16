class Api::V1::DogsController < ApplicationController
  def index
    render json: Dog.all
  end

  def create
    render json: Dog.create(breed: params[:breed], image: params[:image])
  end

  def destroy
    Dog.delete(params[:id])
    render json: {success: "Dog id number #{params[:id]} has been deleted"}, status: 200
  end
end
