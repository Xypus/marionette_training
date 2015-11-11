class ProductsController < ApplicationController
  respond_to :json

  def index
    respond_with Product.all, each_serializer: ProductsSerializer, root: false
  end

  def create
    product = Product.new(product_params)
    if product.save
      respond_with product, status: :ok
    else
      respond_with product, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    head :no_content
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :calories,
      :proteins,
      :fats,
      :carbs,
      :category_id,
    )
  end

end