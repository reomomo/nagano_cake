class SearchesController < ApplicationController
  def search
    @items = Item.looks(params[:search],params[:word])
  end
  
  def search_result
    
  end
end
