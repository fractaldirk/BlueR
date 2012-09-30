class AddGeneralInfo2ToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :permanent, :boolean

  end
end
