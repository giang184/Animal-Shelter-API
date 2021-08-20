class SearchController < ApplicationController
  def index
    if params[:breed] && params[:max_age] && params[:max_weight]
      @animals = Animal.search_by_multiple_params(params[:breed], params[:max_age], params[:max_weight])
      return json_response(@animals)
    elsif params[:breed]
      @animals = Animal.search_by_breed(params[:breed])
      return json_response(@animals)
    elsif params[:max_age]
      @animals = Animal.search_by_max_age(params[:max_age])
      return json_response(@animals)
    elsif params[:max_weight]
      @animals = Animal.search_by_max_weight(params[:max_weight])
      return json_response(@animals)
    else
      render status: 401, json: {
        message: "This search doesn't have the correct parameters inputted. Please add at least one parameter and value."
      }
    end
  end
end