class AddGeneralInfo3ToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :department, :string

  end
end
