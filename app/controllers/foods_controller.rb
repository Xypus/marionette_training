class FoodsController < ApplicationController
  respond_to :json

  def index
    respond_with Food.all, each_serializer: FoodsSerializer, root: false
  end

end