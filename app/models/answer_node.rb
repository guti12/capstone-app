class AnswerNode < ApplicationRecord
	belongs_to :question_node, class_name: "QuestionNode", foreign_key: "question_id"
	belongs_to :next_question, class_name: "QuestionNode"
	has_many :user_answers
end
