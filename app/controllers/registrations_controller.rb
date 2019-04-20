class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		#complete this method
		@user=User.create(name: params[:registrations][:name], last_name: params[:registrations][:last_name], email: params[:registrations][:email], phone: params[:registrations][:phone], password: params[:registrations][:password])
		if @user.save
			flash[:notice] = "your registration is complete"
			redirect_to root_path
		else
			flash[:notice] = "Your registration has failed, try again"
			redirect_to sign_in_path
		end
	end
end
