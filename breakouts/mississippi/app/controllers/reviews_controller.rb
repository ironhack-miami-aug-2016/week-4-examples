class ReviewsController < ApplicationController

  def create
    the_product = Product.find(params[:product_id])
    the_review = the_product.reviews.new(review_params)

    if the_review.save
      redirect_to product_path(the_product)
    else
      @the_product = the_product
      @the_review = the_review

      render "products/show"
    end
  end


  def edit
    @the_product = Product.find(params[:product_id])
    @the_review = @the_product.reviews.find(params[:id])

    render :edit
  end

  def update
    the_product = Product.find(params[:product_id])
    the_review = the_product.reviews.find(params[:id])

    if the_review.update(review_params)
      redirect_to product_path(the_product)
    else
      @the_product = the_product
      @the_review = the_review

      render :edit
    end
  end


  def destroy
    the_product = Product.find(params[:product_id])
    the_review = the_product.reviews.find(params[:id])

    the_review.destroy

    redirect_to product_path(the_product)
  end



  private

  def review_params
    params.require(:review).permit(:message)
  end

end
