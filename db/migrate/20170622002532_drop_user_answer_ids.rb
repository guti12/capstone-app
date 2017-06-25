class DropUserAnswerIds < ActiveRecord::Migration[5.0]
  def change
  	drop_table :user_answer_ids
  end
end
