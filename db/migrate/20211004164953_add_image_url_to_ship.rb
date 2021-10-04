class AddImageUrlToShip < ActiveRecord::Migration[6.1]
  def change
    add_column :ships, :image_url, :string
  end
end
