class Place < ActiveRecord::Base
  belongs_to :event
  has_many :image, as: :image_link
  has_many :favorite, as: :favorite_link
  has_many :like, as: like_link
end
