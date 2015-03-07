class Event < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  extend FriendlyId
  friendly_id :my_method_slug, use: :slugged
  
  def my_method_slug
    start_date.strftime("%m/%d/%Y")+" - #{title}"
  end
  
  rails_admin do 
    create do
      exclude_fields :slug
    end
    edit do
      exclude_fields :slug
    end
  end
end