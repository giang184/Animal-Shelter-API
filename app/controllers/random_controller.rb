class RandomController < ApplicationController
  def index
    if params[:number]
      @array = []
      animals = Animal.all
      params[:number].to_i.times do
        element = animals.sample
        @array.push(element)
        animals.delete(element)
      end    
      return json_response(@array)
    else
      @animal = Animal.all.sample
      return json_response(@animal)
    end
  end
end