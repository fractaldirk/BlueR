class AddStandardPictureToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :picture, :string

  end
end
