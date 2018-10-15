class UsersController < ApplicationController
  before_action :retrieve_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to shifts_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to shifts_path
  end

  private

  def user_params
    pemit(:user).params(:first_name, :status)
  end

  def retrieve_user
    @user ||= User.find(params[:id])
  end
end
