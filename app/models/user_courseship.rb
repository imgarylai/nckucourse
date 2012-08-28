class UserCourseship < ActiveRecord::Base
	validates_uniqueness_of :user_id, :scope => :course_id
  belongs_to :user
  belongs_to :course
  attr_accessible :course_id, :user_id
end