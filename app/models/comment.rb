class Comment < ActiveRecord::Base
  belongs_to :product
  attr_accessible :author, :content
  validates :author, :content, :presence => true
  validates :content, :length => {:minimum => 5}
end