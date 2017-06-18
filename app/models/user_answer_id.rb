class UserAnswerId < ApplicationRecord
	belongs_to :users, optional: true
	belongs_to :answers_nodes, optional: true
end
