class Event < ActiveRecord::Base
  has_one :place
  has_one :performer
  has_many :images, as: :image_link

  acts_as_mappable :default_units => :kms,
                   :default_formula => :sphere,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng
end
