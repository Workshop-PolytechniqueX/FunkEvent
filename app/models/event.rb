class Event < ActiveRecord::Base
  has_one :place
  has_one :performer
  has_many :image, as: :image_link
end
