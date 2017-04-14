class AddWholesalepriceToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :wholesaleprice, :decimal
  end
end
