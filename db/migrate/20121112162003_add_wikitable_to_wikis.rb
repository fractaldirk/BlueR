class AddWikitableToWikis < ActiveRecord::Migration
  def change
    add_column :wikis, :wiki_wiki, :text

  end
end
