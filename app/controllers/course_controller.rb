class CourseController < ApplicationController
  def index
    @courses = Course.find(:all, :order => 'sn')

    respond_to do |format|
      format.html # course.html.erb
      format.json { render json: @course }
    end
  end

  def add_course
    @sn = params[:sn]
  end

end
