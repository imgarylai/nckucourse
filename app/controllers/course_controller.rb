class CourseController < ApplicationController
  def index
    @courses = Course.find(:all, :order => 'sn')
    @users = User.all

    respond_to do |format|
      format.html # course.html.erb
      format.json { render json: @course }
    end
  end

  def add_course
    @sn = params[:sn]

  end

  def show
    @courses = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scheduled_post }
    end
  end

end
