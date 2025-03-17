class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 1..500 }

  belongs_to :supplier
  has_many :images

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

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
