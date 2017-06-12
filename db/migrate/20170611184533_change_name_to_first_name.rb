class ChangeNameToLastName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :name, :last_name
  end
end
