class Book < ApplicationRecord
  belongs_to :user

  acts_as_votable

  mount_uploader :image, ImageUploader

  def self.search(term)
	  if term
	    where('title LIKE ?', "%#{term}%")
	  else
	    all
	  end
	end

	
end
