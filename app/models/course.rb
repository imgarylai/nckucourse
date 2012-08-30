class Course < ActiveRecord::Base
  has_many :user_courseships
  has_many :users, :through => :user_courseships
  has_many :exps
  attr_accessible :name, :sn, :time
  
  def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	    where('sn LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end

end
