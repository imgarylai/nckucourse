class Course < ActiveRecord::Base
  has_many :user_courseships
  has_many :users, :through => :user_courseships
  has_many :exps
  attr_accessible :name, :sn, :time, :teacher, :categories
  
  def self.search(search)
	  if search
	    where('name || sn LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end

end
