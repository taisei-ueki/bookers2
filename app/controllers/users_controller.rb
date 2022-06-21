class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])

  end

  def show
    
  end
  
  def index
    @users = User.all 
  end
  
  private
  def user
    params.require(:user).permit(:name,:introduction, :image )
  end
end
