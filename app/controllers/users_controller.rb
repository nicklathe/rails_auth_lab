class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create
  end

  def edit
    @user.find(params[:id])
  end

   def update
    @user = User.find_by_id(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
  end

end