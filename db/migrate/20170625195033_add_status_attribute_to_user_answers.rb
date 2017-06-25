class AddStatusAttributeToUserAnswers < ActiveRecord::Migration[5.0]
  def change
  	add_column :user_answers, :status, :string
  end
end
