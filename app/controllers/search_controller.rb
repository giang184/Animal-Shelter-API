class SearchController < ApplicationController
  def index
    if params[:breed]
      @animals = Animal.search_by_breed(params[:breed])
      return json_response(@animals)
    elsif params[:age]
      @animals = Animal.search_by_age(params[:age])
      return json_response(@animals)
    else
      @animals = Animal.page(2)
      return json_response(@animals)
    end
  end
end