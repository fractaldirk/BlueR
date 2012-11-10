class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.text :competencies_wiki
      t.text :job_description_wiki
      t.text :personal_profile_wiki
      t.text :dictionary_wiki

      t.timestamps
    end
  end
end
