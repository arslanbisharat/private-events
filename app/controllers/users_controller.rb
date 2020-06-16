class UsersController < ApplicationController
   #before_action :authenticate_user!
  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if user.save
      flash[:success] = "User Successfully Created"
      redirect_to @user
        
    else
      flash[:error] = "Ops! Try Again"
      render "new"    
    end
  end

  def show
    @user = User.find(params{:id})
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end

end
