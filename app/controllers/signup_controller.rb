class SignupController < ApplicationController
	def signup 
		if params[:email].blank?
			render text: "this is not valid"
		else 
			Signup.create(email: params[:email])
		end
	end
end