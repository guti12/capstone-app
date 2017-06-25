class ChangeAnswerIdOnUserAnswers < ActiveRecord::Migration[5.0]
  def change
  	rename_column :user_answers, :answer_id, :anwser_node_id
  end
end
