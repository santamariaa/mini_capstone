class RemoveImageFromProduct < ActiveRecord::Migration
  def change
    change_column :images, :product_id, :integer
    remove_column :products, :image, :string

    end


end
