class CreateQuestionNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :question_nodes do |t|
      t.string :text
      t.integer :role

      t.timestamps
    end
  end
end
