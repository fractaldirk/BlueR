class AddPersonalProfile2ToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :nationality, :integer

    add_column :positions, :residential_status, :integer

  end
end
