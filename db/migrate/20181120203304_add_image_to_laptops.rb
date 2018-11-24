class AddImageToLaptops < ActiveRecord::Migration[5.2]
  def change
    add_column :laptops, :image, :string
  end
end
