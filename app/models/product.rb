class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 20..500 }



  def is_discounted?#implied T or F
    price <=10
  end

  def tax 
    0.09 * price 
  end  

  def total
    price + tax 
  end

end
