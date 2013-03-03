class PeopleController < ApplicationController
	def marriel
	end	
	
	def kate
	end

	def comments 
		puts "Am I here"
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