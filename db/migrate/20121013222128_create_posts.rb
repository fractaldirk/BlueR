class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :idea_title
      t.string :idea_content

      t.timestamps
    end
  end
end
