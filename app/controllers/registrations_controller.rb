class RegistrationsController < ApplicationController

 def new
    @cat = Cat.new
 end

 def create
  @cat = Cat.new(cat_params)
   if @cat.save
     redirect_to cats_path
   else
     render :new
   end
    @cat.errors.add(:email, "U CANT! there is already kat with this name")
    
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :email, :password, :password_confirmation)
  end
end
