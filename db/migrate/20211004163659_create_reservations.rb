class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ship, null: false, foreign_key: true
      t.integer :price
      t.integer :rating
      t.text :review
      t.string :negotiation_status
      t.datetime :reservation_start
      t.datetime :reservation_end

      t.timestamps
    end
  end
end
