class AddJobTitleToCompetencies < ActiveRecord::Migration
  def change
    add_column :competencies, :job_title, :string

    add_column :competencies, :department, :string

    add_column :competencies, :office, :string

  end
end
