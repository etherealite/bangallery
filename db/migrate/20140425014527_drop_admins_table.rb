class DropAdminsTable < ActiveRecord::Migration
  def up
      drop_table :admins
  end

  def down
      raise ActiveRecord::Irreversable
  end
end
