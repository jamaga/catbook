class RegistrationsController < ApplicationController

	def new
		@cat = Cat.new

	end


	def create

	end


	def registrations_params
    params.require(:cat).permit(:email, :password)
  end

end
