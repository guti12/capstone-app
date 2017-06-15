class QuestionNodesController < ApplicationController


	def new
		
	end


	def show
		question = QuestionNode.find(params[:id])

	end
	

end
