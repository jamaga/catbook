class CatMailer < ActionMailer::Base

	def welcome(cat)
  	@cat = cat
  	@url = "catbook@esdeluxe.com"
  	mail(to: @cat.email, subject: 'Welcome cute cute kitty kat!')
	end


	default from: "catbook@esdeluxe.com"

end
