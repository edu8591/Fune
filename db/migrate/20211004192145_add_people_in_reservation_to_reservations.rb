class AddPeopleInReservationToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :people_in_reservation, :integer
  end
end
