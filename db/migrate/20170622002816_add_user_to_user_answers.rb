class AddUserToUserAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :user_answers, :user_id, :integer
    add_column :user_answers, :answer_id, :integer
  end
end
