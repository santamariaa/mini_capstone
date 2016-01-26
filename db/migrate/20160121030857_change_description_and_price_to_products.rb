class ChangeDescriptionAndPriceToProducts < ActiveRecord::Migration
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 8, scale: 2

  end
end
