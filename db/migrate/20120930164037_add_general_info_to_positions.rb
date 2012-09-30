class AddGeneralInfoToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :office, :integer

    add_column :positions, :unique_position, :boolean

    add_column :positions, :fte, :decimal

  end
end
