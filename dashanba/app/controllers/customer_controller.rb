class CustomerController < ApplicationController

	def new
		@customer = Customer.all
		
	end

	def creaite
		@customer = Customer.new(params[:request])
		@customer.save
	end
end
