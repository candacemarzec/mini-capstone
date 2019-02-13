class Product < ApplicationRecord

  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 20..500 }

  has_many :category_products
  has_many :categories, through: :category_products
 
  has_many :images
 
  belongs_to :supplier

  def is_discounted?#implied T or F
    price <=10
  end

  def tax 
    0.09 * price 
  end  

  def total
    price + tax 
  end

  def category_names
    categories.map { |category| category.name }
  end

end
