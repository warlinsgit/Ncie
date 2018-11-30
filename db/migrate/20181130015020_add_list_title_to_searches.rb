class AddListTitleToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :title, :string
  end
end
