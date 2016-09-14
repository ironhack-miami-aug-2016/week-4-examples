class ProductsController < ApplicationController
  def index
    @products_array = Product.all

    render :index
  end

  def new
    @the_product = Product.new

    render :new
  end


  def create
    the_product = Product.new(product_params)

    if the_product.save
      redirect_to products_path
    else
      @the_product = the_product

      render :new
    end
  end


  def show
    @the_product = Product.find(params[:id])
    @the_review = Review.new

    render :show
  end



  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :description)
  end
end
