class AddReferenceToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :reference, :string
  end
end
