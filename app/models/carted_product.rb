class CartedProduct < ApplicationRecord
	belongs_to :users
	belongs_to :orders
	has_many :products

	
	
end
