class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :max_people
      t.integer :min_price
      t.integer :max_price
      t.string :ship_type
      t.string :location

      t.timestamps
    end
  end
end
