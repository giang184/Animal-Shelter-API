class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def animal_params
    params.permit(:name, :animal_type, :gender, :age, :weight, :color, :breed)
  end
end