class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def login

  	end

  	def current_user
  		session[:name]
	end


	def require_logged_in
		return login_path unless session[:name]

	end
end
