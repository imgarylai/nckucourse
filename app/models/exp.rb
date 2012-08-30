class Exp < ActiveRecord::Base
  attr_accessible :content, :course_id, :material, :rate, :score, :style, :user_id, :year
  validates_presence_of :content, :course_id, :material, :rate, :score, :style, :user_id, :year
  validates_length_of :content, :material, :style, :in => 10..800
  belongs_to :user
  belongs_to :course  
end
