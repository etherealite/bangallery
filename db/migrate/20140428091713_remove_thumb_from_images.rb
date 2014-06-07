class RemoveThumbFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :thumb
  end

  def down
    add_column :images, :thumb, :string
  end
end
