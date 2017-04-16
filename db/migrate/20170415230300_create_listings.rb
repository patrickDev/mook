class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.string :reference
      t.decimal :price
      t.decimal :wholesaleprice

      t.timestamps
    end
  end
end
