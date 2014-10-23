# module Api
# 	module V1
# 		class CatsController < ApplicationController
# 			def show
# 			{
# 				name: cat.name,
# 				birthday: cat.birthday
# 			}
# 		end
# 	end
# end


class Api::V1::CatsController < ApplicationController
	def show
		cat = Cat.find(params[:id])
		render json: {
			name: cat.name,
			birthday: cat.birthday
		}
	end
end