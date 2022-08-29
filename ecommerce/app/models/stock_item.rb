class StockItem < ApplicationRecord
	validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: { only_integer: true }
end