class QuestionNodesController < ApplicationController


	def new
		
	end


	def show
		@question = QuestionNode.find(params[:id])
		@answers = @question.answer_nodes


	end

	def answer
		answer_node = AnswerNode.find(params[:id])
		user_answer = UserAnswer.new(answer_node_id: answer_node.id,
																	user_id: current_user.id,
																	status: "current"
																	)
		user_answer.save

		if answer_node.next_question.role == 3
			redirect_to '/compile_cart'
		else
			redirect_to "/question_nodes/#{answer_node.next_question_id}"
		end
	end


	

end
