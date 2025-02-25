class Product < ApplicationRecord
  def is_discounted?
    price && price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price * 1.09
  end
end
