class QuestionNodesController < ApplicationController


	def new
		
	end


	def show
		@question = QuestionNode.find(params[:id])
		@answers = @question.answer_nodes

		@user_answer = UserAnswerId.new(answer_node_id: params[:id],
																		user_id: current_user.id
																		)

		@user_answer.save

	end
	

end
