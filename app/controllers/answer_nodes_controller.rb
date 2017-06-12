class AnswerNodesController < ApplicationController
	def index	
		@answers = AnswerNodes.all
	end

	def new
		
	end

	def create
		@answers = AnswerNode.new(
															@question_id = params[:id],
															@text = params[:id],
															@next_question_id[:id]
															)
		@answers.save
	end

end
