class Course < ActiveRecord::Base
  attr_accessible :description, :name, :attachments_attributes

 	has_many :attachments, as: :attachable, dependent: :destroy
  	accepts_nested_attributes_for :attachments

  has_many :courses
  validates_uniqueness_of :name
end
