class Post < ActiveRecord::Base

  validates :name, :presence => true
  validates :title, :presence => true,
		    :uniqueness => true,
		    :length => { :minimum => 5 }

  has_many :comments, :dependent => :destroy
end