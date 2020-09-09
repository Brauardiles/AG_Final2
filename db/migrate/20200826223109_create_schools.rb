class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.integer :Rut
      t.integer :rol_data_base
      t.string :name
      t.integer :type_of_school
      t.boolean :integration
      t.integer :region
      t.string :comuna
      t.string :adress
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
