class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments

  acts_as_votable

  mount_uploader :image, ImageUploader

	
end


