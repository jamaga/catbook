class LoginsController < ApplicationController

	def show_form
		render :show_form
	end

	def login
		puts params.inspect
		cat = Cat.find_by email: (params[:cat][:email])
		redirect_to cats_show_path(cat_id)
	end

	#private
  #def cat_params
   # params.require(:cat).permit(:name, :email, :password)
  #end
end


