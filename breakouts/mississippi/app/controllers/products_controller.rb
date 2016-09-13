class ProductsController < ApplicationController
  def index
    @products_array = Product.all

    render :index
  end
end
