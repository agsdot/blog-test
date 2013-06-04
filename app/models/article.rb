class Article < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments, :dependent => :destroy


  validates_presence_of :title, :body
  validates_uniqueness_of :title


end
