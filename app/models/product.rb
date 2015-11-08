class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :carbs, numericality: {only_integer: true, message: 'must be a number'}
  validates :proteins, numericality: {only_integer: true, message: 'must be a number'}
  validates :fats, numericality: {only_integer: true, message: 'must be a number'}
  validates :calories, numericality: {only_integer: true, message: 'must be a number'}
end
