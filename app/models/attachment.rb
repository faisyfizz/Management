class Attachment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :attachable, polymorphic: true

  
  attr_accessible :image
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
