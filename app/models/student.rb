class Student < ActiveRecord::Base
  attr_accessible :description, :name, :roll_no, :attachments_attributes

 has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
  
  belongs_to :course, dependent: :destroy
  validates_uniqueness_of :name
  
 
end
