class SessionsController < ApplicationController

	def new

	end

	def create
		if params[:name].nil? || params[:name].empty?
			redirect_to login_path
		elsif params[:name]
			session[:name] = params[:name]
		end
	end

	def destroy
		if !session[:name]
			nil
		else
			session.delete(:name)
		end
	end

end