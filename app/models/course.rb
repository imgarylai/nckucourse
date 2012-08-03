class Course < ActiveRecord::Base
  has_many :user_courseships
  has_many :users, :through => :user_courseships
  attr_accessible :name, :sn, :time
  
end
