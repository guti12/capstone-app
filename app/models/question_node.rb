class QuestionNode < ApplicationRecord
	has_many :answer_nodes, foreign_key: "question_id"
	has_many :next_questions, through: :answer_nodes
end
