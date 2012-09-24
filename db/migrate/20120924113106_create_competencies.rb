class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.string :competencies
      t.integer :competency_value
      t.integer :competency_cpv
      t.references :position

      t.timestamps
    end
    add_index :competencies, :position_id
  end
end
