class StockItem < ApplicationRecord
	validates :name, presence: true
  validates :price, presence: true, uniqueness: true, numericality: true
  validates :quantity, presence: true, numericality: { only_integer: true }
end