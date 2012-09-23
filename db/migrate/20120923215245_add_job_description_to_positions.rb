class AddJobDescriptionToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :job_title, :string

    add_column :positions, :valid_from, :date

    add_column :positions, :job_grade, :string

    add_column :positions, :reports_to, :string

    add_column :positions, :line_manages, :string

    add_column :positions, :overall_purpose, :text

    add_column :positions, :specific_work_env, :text

  end
end
