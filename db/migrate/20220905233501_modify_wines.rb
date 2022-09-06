class ModifyWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :year, :integer
  end
end
