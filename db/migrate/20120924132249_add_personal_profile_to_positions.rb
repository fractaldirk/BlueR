class AddPersonalProfileToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :name, :string

    add_column :positions, :photo, :string

    add_column :positions, :experience, :text

    add_column :positions, :date_birth, :date

    add_column :positions, :gender, :integer

    add_column :positions, :marital_status, :integer

    add_column :positions, :children, :integer

    add_column :positions, :personal_development, :text

  end
end
