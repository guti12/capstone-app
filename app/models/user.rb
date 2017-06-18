class User < ApplicationRecord
	has_secure_password
	
	has_many :user_answer_ids
	has_many :carted_products
	has_many :orders
	has_many :feedbacks

end
