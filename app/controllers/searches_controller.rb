class SearchesController < ApplicationController


def new
  @search = Search.new
  @brands = Laptop.pluck(:brand)
end

def create
  @search = Search.create(search_params)
  redirect_to @search
  
end

def show
  @search = Search.find(params[:id])
end


private

def search_params
	params.require(:search).permit(:keywords, :title, :brand, :min_price, :max_price, :condition, :finish)
end


end


