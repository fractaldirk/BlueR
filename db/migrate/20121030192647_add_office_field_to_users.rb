class AddOfficeFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_office, :integer

  end
end
