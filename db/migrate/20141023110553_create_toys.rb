class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
    	t.integer :favorite_cat_id
      t.timestamps
    end
  end
end
