class CourseController < ApplicationController

  def course
    @courses = Course.all

    respond_to do |format|
      format.html # course.html.erb
      format.json { render json: @course }
    end
  end

end
