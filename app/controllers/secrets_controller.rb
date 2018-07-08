class SecretsController < ApplicationController
before_action :require_login
	def show
		if !session[:name] 
			redirect_to login_path
		else
			# show secret
		end
	end

	def require_login

	end
end