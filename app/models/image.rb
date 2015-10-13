class Image < ActiveRecord::Base
  belongs_to: image_link, polymorphic: true
end
