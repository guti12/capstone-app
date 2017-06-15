class AnswerNodesController < ApplicationController

	def create
		answer = AnswerNode.new(
															question_id: params[question.id],
															text: params[:text],
															next_question_id: params[:next_question_id]
															)
		@answer.save
		redirect_to 'answer_nodes/#{AnswerNode.id}'
	end

	def show
		@answer = AnswerNode.find_by(params[:id])
	end


end
