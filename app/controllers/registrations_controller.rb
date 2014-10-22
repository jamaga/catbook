class RegistrationsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
    	#CatMailer.welcome(@cat).deliver
    	CatMailer.delay.welcome(@cat)
    	#CatMailer.welcome(@cat).deliver
      redirect_to cats_path
    else
      render :new
    end
  rescue ActiveRecord::RecordNotUnique
    @cat.errors.add(:email, "There is already a user with this email")
    render :new
  end
  #handle_asynchronously :in_the_future, :run_at => Proc.new { 5.minutes.from_now }

  private

  def cat_params
    params.require(:cat).permit(:name, :email, :password, :password_confirmation)
  end
end
