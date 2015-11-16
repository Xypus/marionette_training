class ProductsSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :proteins, :carbs, :fats, :category_id
end