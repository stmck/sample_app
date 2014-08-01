class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
<<<<<<< HEAD

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
=======
  
  def create
    @user = User.new(user_params)
    if @user.save
>>>>>>> sign-in-out
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

<<<<<<< HEAD
=======

 private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

>>>>>>> sign-in-out
end
