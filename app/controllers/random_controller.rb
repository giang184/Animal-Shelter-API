class RandomController < ApplicationController
  def index
    @animal = Animal.all.sample
    json_response(@animal)
  end
end