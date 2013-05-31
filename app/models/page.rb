class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :url
  
end
