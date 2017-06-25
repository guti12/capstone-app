class UserAnswer < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :answer_node, optional: true
end
