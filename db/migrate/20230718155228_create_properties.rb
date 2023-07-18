class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :operation_type
      t.string :address
      t.integer :price
      t.integer :montly_rent
      t.integer :maintanance
      t.string :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :area
      t.boolean :pets
      t.string :about
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
