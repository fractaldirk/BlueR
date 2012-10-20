class AddTypeOfContractToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :type_contract, :string

  end
end
