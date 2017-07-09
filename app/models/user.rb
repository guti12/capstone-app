class User < ApplicationRecord
	has_secure_password
	
	has_many :user_answers
	has_many :carted_products
	has_many :orders
	has_many :feedbacks
	
	def	compile_cart
		lemonade = false
		cookie = false

		cart = Cart.create(user_id: id)
		current_user_answers = user_answers.where(current: true)
		if current_user_answers.where(answer_node_id: 1).exists?
			#they want lemonade
			lemonade = true
			if current_user_answers.where(answer_node_id: 2).exists?
				num_cups = 1
			elsif current_user_answers.where(answer_node_id: 3).exists?
				num_cups = 2
			elsif current_user_answers.where(answer_node_id: 4).exists?
				num_cups = 3
			end

			if current_user_answers.where(answer_node_id: 5).exists?
				size_cups = "S"
			elsif current_user_answers.where(answer_node_id: 6).exists?
				size_cups = "M"
			elsif current_user_answers.where(answer_node_id: 7).exists?
				size_cups = "L"
			end
		end
		
		#do they want cookies?
		if current_user_answers.where(answer_node_id: 10).exists?
			cookies = true
		else 
			cookies = false
		end

		if current_user_answers.where(answer_node_id: 11).exists?
			water = true
		else
			water = false
		end
		
		if lemonade
			num_cups.times do
				CartedProduct.create(user_id: id, cart_id: cart.id, product_id: 1, status: "carted") #if lemonade is product 1
			end
		end

		if cookies
			CartedProduct.create(user_id: id, cart_id: cart.id, product_id: 2, status: "carted")
		end

		if water
			CartedProduct.create(user_id: id, cart_id: cart.id, product_id: 3, status: "carted")			
		end

	end
	
end	

