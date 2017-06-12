class QuestionNodesController < ApplicationController
	def index
		@question = Question_node.all
	end

	def new
		
	end

	def create
		@question = QuestionNode.new(
																	@text = params[:text],
																	@role = params[:role]
																	)
		@question.save
	end

end
