class Performer < ActiveRecord::Base
  belongs_to :event
  has_many :images, as: :image_link
  has_many :favorites, as: :favorite_link
  has_many :likes, as: :like_link

  scope :category, -> (cat) { where performer_category: cat }
  scope :genre, -> (gnr) { where genre: gnr }
end
