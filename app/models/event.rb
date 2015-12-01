class Event < ActiveRecord::Base
  has_one :place
  has_one :performer
  has_many :images, as: :image_link


  scope :cheaper_than, ->(chp) {where("price < ?", chp) }

  acts_as_mappable :through => :place
end
