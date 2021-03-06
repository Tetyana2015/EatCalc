class Dish < ActiveRecord::Base
  has_many :dish_products
  has_many :products, through: :dish_products
  accepts_nested_attributes_for :dish_products

  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => false }
  validates :name, :uniqueness => true
end
