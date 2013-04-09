class CauseController < ApplicationController

	def comments 
		Comment.create(text: params[:comments])
		render "thankyou"
	end 
	
	def yes 
		Response.create(would_donate: true)
		render "thankyou"
	end

	def no
		Response.create(would_donate: false)
		render "thankyou"
	end 	
end 