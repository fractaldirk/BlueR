class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.date :finished_at
      t.string :task
      t.references :post

      t.timestamps
    end
    add_index :milestones, :post_id
  end
end
