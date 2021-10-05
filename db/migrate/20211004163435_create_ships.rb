class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|

      t.references :user, null: false, foreign_key: true
      t.integer :max_people
      t.integer :price
      t.string :ship_type
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
