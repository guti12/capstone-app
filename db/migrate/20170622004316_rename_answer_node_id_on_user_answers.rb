class RenameAnswerNodeIdOnUserAnswers < ActiveRecord::Migration[5.0]
  def change
  	rename_column :user_answers, :anwser_node_id, :answer_node_id
  end
end
