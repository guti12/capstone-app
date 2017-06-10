class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :order_id
      t.integer :stars
      t.string :comment

      t.timestamps
    end
  end
end
