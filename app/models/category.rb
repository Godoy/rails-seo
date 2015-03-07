class Category < ActiveRecord::Base
  has_many :events
  has_many :news
  
  extend FriendlyId
  friendly_id :name, use: :slugged
end