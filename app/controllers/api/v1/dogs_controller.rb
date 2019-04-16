class Api::V1::DogsController < ApplicationController
  def index
    render json: Dog.all
  end

  def create
    render json: Dog.create(breed: params[:breed], image: params[:image])
  end
end
