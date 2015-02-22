class Category < ActiveRecord::Base
  has_many :events
  has_many :news
end