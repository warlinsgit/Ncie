class AddUserIdToLaptops < ActiveRecord::Migration[5.2]
  def change
    add_column :laptops, :user_id, :integer
  end
end
