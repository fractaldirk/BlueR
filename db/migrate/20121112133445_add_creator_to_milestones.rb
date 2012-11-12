class AddCreatorToMilestones < ActiveRecord::Migration
  def change
    add_column :milestones, :creator, :string

  end
end
