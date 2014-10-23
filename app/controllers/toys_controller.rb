class ToysController < ApplicationController
	def create
		@toy = Toy.new(toy_params)
		if @toy.save
			redirect_to toy_path
	end

	def new
		@toy = Toy.new
	end

  def add
  end
end

end



