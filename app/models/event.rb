class Event < ActiveRecord::Base
  has_one :place
  has_one :performer
  has_many :images, as: :image_link


  scope :cheaper_than, ->(chp) {where("price <= ?", "#{chp}") }
  scope :categoryE, -> (cat) { where(performer_id: Performer.category(cat)) }
  scope :genreE, -> (gnr) { where(performer_id: Performer.genre(gnr)) }



  acts_as_mappable :through => :place
end
