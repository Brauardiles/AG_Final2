class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Nickname, :string
    add_column :users, :Area, :integer
    add_column :users, :Position, :string
  end
end
