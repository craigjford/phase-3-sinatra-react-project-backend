class CreateVineyards < ActiveRecord::Migration[6.1]
  def change
    create_table :vineyards do |t|
      t.string   :name
      t.string   :address
      t.string   :city
      t.string   :state
      t.string   :image_url
    end
  end
end
