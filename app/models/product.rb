class Product < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  attr_accessible :description, :name, :pricing, :category_id
  validates :description, :category_id, :name, :pricing, :presence => true
  validates :description, :length => {:minimum => 3}
end
