class User < ApplicationRecord
	has_secure_password
	
	has_many :user_answers
	has_many :carted_products
	has_many :orders
	has_many :feedbacks
	
	def	compile_cart

		current_user_answers = user_answers.where(status: "current")

		# Lemonade
		if current_user_answers.where(answer_node_id: 1).exists? || current_user_answers.where(answer_node_id: 17).exists? || current_user_answers.where(answer_node_id: 15).exists?
			# num of cups
			if current_user_answers.where(answer_node_id: 2).exists?
				num_cups = 1
			elsif current_user_answers.where(answer_node_id: 3).exists?
				num_cups = 2
			elsif current_user_answers.where(answer_node_id: 4).exists?
				num_cups = 3
			end

			# size
			if current_user_answers.where(answer_node_id: 5).exists?
				CartedProduct.create(user_id: id, product_id: 1, quantity: num_cups, status: "carted")
			elsif current_user_answers.where(answer_node_id: 6).exists?
				CartedProduct.create(user_id: id, product_id: 2, quantity: num_cups, status: "carted")
			elsif current_user_answers.where(answer_node_id: 7).exists?
				CartedProduct.create(user_id: id, product_id: 3, quantity: num_cups, status: "carted")
			end
		end
		
		# cookies
		if current_user_answers.where(answer_node_id: 10).exists?
			CartedProduct.create(user_id: id, product_id: 4, status: "carted")
		end

		# water
		if current_user_answers.where(answer_node_id: 11).exists?
			CartedProduct.create(user_id: id, product_id: 5, status: "carted")			
		end
		
		current_user_answers.update_all(status: "old")
	end
	
end 

