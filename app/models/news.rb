class News < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  rails_admin do 
    create do
      exclude_fields :slug
    end
    edit do
      exclude_fields :slug
    end
  end
end
