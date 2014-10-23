class AddCatsToToys < ActiveRecord::Migration
  def change
    add_column :toys, :name, :string
    add_column :toys, :cat_id, :integer
  end
end
