class AddWeightToImages < ActiveRecord::Migration
  def change
      add_column :images, :weight, :integer
      Image.update_all ['weight = ?', 0 ]
  end
end
