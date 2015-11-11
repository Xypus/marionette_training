class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true
  validates :carbs, numericality: {only_integer: true, message: 'must be a number'}
  validates :proteins, numericality: {only_integer: true, message: 'must be a number'}
  validates :fats, numericality: {only_integer: true, message: 'must be a number'}
  validates :calories, numericality: {only_integer: true, message: 'must be a number'}
  validates :category_id, presence: true
end
