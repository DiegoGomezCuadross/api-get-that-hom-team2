class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :passoword
      t.integer :role

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
