class Listing < ApplicationRecord
	has_attached_file :image, :styles => { :medium => "200x200", :thumb => "100x100>" }, :default_url => "default.jpg"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :name, :description, :reference, :price, :wholesaleprice, presence: true
	validates :price, numericality: {greater_than: 0 }
	validates :wholesaleprice, numericality: {greater_than: 0 }
	validates_attachment_presence :image	

	belongs_to :user
	has_many :orders 
	has_many :reviews
end