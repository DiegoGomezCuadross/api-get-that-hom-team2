class AddPasswordDigestToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password_digest, :string
    add_index :users, :password_digest, unique: true
  end
end
