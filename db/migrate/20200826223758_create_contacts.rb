class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :position
      t.string :profesion
      t.integer :phone
      t.string :i_email
      t.integer :mobile_phone
      t.string :p_email
      t.belongs_to :school, foreign_key: true

      t.timestamps
    end
  end
end
