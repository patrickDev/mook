class Listing < ApplicationRecord	
	validates :name, :description, :reference, :price, :wholesaleprice, presence: true
	validates :price, numericality: {greater_than: 0 }
	validates :wholesaleprice, numericality: {greater_than: 0 }

	belongs_to :user
	has_many :orders 
	has_many :reviews

	mount_uploader :image, ImageUploader
end
