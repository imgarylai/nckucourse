class MainController < ApplicationController
  skip_before_filter :facebook_login, only: [:login]
  def login
  	if current_user
  		redirect_to root_url 
  	end
  end
end
