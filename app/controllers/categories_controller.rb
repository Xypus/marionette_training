class CategoriesController < ApplicationController
  respond_to :json

  def index
    def index
      respond_with Category.all, each_serializer: CategoriesSerializer, root: false
    end
  end

end