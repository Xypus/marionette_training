class FoodsController < ApplicationController

  def index
    render json: Food.all, each_serializer: FoodsSerializer
  end

end