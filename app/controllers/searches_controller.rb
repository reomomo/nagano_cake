class SearchesController < ApplicationController
  def search
    @item = Item.looks(params[:search],)
  end
end
