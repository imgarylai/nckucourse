class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end


#find # raise error if not found
#find_by_id # will not raise error if not found
#find_or_initiate_by_id # if not found will new a userbut not save
#find_or_create_by_id # if not found will automatically create one in database
