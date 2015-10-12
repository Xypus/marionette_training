class FoodsSerializer < ActiveModel::Serializer
  attributes :id, :calories, :proteins, :carbs, :fats

  belongs_to :meal
end