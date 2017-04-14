json.extract! listing, :id, :name, :description, :reference, :price, :wholesaleprice, :created_at, :updated_at
json.url listing_url(listing, format: :json)
