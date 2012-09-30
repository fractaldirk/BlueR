class AddPersonalProfile3ToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :start_date, :date

  end
end
