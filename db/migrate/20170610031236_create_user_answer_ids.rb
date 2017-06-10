class CreateUserAnswerIds < ActiveRecord::Migration[5.0]
  def change
    create_table :user_answer_ids do |t|
      t.integer :answer_node_id
      t.integer :user_id

      t.timestamps
    end
  end
end
