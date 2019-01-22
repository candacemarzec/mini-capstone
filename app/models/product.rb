class Product < ApplicationRecord

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
