class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|

      t.timestamps
    end
  end
end
