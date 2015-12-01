class Place < ActiveRecord::Base
  belongs_to :event
  has_many :images, as: :image_link
  has_many :favorites, as: :favorite_link
  has_many :likes, as: :like_link

  acts_as_mappable :default_units => :kms,
                   :default_formula => :sphere,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude


end
