class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :carbs, presence: true, numericality: true
  validates :proteins, presence: true, numericality: true
  validates :fats, presence: true, numericality: true
  validates :calories, presence: true, numericality: true
end
