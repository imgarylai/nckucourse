class CourseController < ApplicationController
  def index
    @courses = Course.all
    # @usercourseships = UserCourseship.find_by_user_id(current_user.id)

  end

  def add_course
    @user = User.find(session[:user_id])
    @course = Course.find(params[:id])
    @user.courses.each do |c|
      if c.time == @course.time
        flash[:notice] = "Time Confilct!!! "
        redirect_to :root
        return
      end
    end
    @usercourseship = UserCourseship.create( :user_id => @user.id, :course_id => @course.id)
    redirect_to :root
  end

  def remove_course
    @user = User.find(session[:user_id])
    @course = Course.find(params[:id])
    @usercourseship = @user.user_courseships.find_by_course_id(@course.id).try :destroy
    #@usercourseship = UserCourseship.where('user_id = ? and course_id = ?',
    #                                       @user, @course)[0].destroy
    #@usercourseship = UserCourseship.where( :user_id => @user.id, :course_id => @course.id).destroy
    redirect_to :root
  end

  def show
    @course = Course.find(params[:id])

  end

end
