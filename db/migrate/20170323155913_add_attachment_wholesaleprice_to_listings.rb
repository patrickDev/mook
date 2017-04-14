class AddAttachmentWholesalepriceToListings < ActiveRecord::Migration
  
  def down 
  	remove_attachment :listings, :wholesaleprice
  end 


end
