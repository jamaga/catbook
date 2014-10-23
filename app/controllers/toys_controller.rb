class ToysController < ApplicationController

	def index
		@cat = Cat.find(params[:cat_id])
	end

	def show
		@toy = Toy.find(params[:id])
	end
	
	def new
		@cat = Cat.find(params[:cat_id])
		@toy = Toy.new
	end

	def create
		@toy = Toy.create(name: params[:toy][:name], cat_id: params[:cat_id])
		redirect_to cat_toy_path(@toy.cat_id ,@toy.id)
	end

	def destroy
		Toy.find(params[:id]).destroy
		redirect_to cat_path(params[:cat_id])
	end

end




