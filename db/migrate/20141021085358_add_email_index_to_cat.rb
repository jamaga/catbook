class AddEmailIndexToCat < ActiveRecord::Migration
  def change
    add_column :cats, :index, :integer
  end
end
