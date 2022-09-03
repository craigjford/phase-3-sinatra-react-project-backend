class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string  :name
      t.integer :price
      t.integer :vineyard_id
    end
  end
end
