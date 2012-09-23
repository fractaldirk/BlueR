class AddScopeToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :scope, :text

  end
end
