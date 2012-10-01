class AddPersonalProfile4ToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :nationality_string, :string

    add_column :positions, :gender_string, :string

    add_column :positions, :residential_status_string, :string

  end
end
