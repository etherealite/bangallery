class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :description
      t.string :thumb
      t.string :fullsize

      t.timestamps
    end
  end
end
