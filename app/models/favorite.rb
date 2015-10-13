class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorite_link, polymorphic: true
end
