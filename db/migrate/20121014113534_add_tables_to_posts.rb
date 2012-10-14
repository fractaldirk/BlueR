class AddTablesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :idea_name, :string

    add_column :posts, :idea_body, :text

  end
end
