class Address < ApplicationRecord
  validates :address, presence: true
  validates :contact, presence: true
end