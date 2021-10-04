class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.references :reservation, null: false, foreign_key: true
      t.boolean :paid

      t.timestamps
    end
  end
end
