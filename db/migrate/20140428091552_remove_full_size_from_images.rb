class RemoveFullSizeFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :fullsize
  end

  def down
    add_column :images, :fullsize, :string
  end
end
