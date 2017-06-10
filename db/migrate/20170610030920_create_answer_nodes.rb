class CreateAnswerNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_nodes do |t|
      t.integer :question_id
      t.string :text
      t.integer :next_question_id

      t.timestamps
    end
  end
end
