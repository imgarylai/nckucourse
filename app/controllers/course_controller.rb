class CourseController < ApplicationController

  def course
    @courses = Course.find(:all, :order => 'sn')

    respond_to do |format|
      format.html # course.html.erb
      format.json { render json: @course }
    end
  end

  def add_course
  	
  end

end
