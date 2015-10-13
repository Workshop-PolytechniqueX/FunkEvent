class Event < ActiveRecord::Base
  has_one :place
  has_one :performer
  has_many :images, as: :image_link
end
