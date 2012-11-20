class AddIndexWikiToWikis < ActiveRecord::Migration
  def change
    add_column :wikis, :index_wiki, :text

  end
end
