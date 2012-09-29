class AddResponsibilitiesToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :conceptual, :text

    add_column :positions, :implementation, :text

    add_column :positions, :support, :text

  end
end
