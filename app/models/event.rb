class Event < ActiveRecord::Base
  has_one :place
  has_one :performer
  has_many :images, as: :image_link


  scope :cheaper_than, ->(chp) {where("price <= ?", "#{chp}") }
  scope :category, -> (cat) { joins(:performers).where("performer_category LIKE ?", "%#{cat}%") }
  scope :genre, -> (gnr) { joins(:performers).where("genre LIKE ?", "%#{gnr}%") }



  acts_as_mappable :through => :place
end
