class AddOptionsToCompetencies < ActiveRecord::Migration
  def change
    add_column :competencies, :competency_options, :string

  end
end
