class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ship, null: false, foreign_key: true
      t.integer :price
      t.integer :rating
      t.text :review
      t.string :negotiation_status
      t.date :reservation_start
      t.date :reservation_end

      t.timestamps
    end
  end
end
