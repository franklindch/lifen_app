class ShiftsController < ApplicationController
  before_action :retrieve_planning, only: [:create]
  before_action :retrieve_user, :retrieve_shift, only: [:assign_worker]

  def new
    @shift = Shift.new
    @shifts = Shift.includes(:user)
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.planning = @planning
    if @shift.save
      redirect_to new_shift_path
    else
      render :new
    end
  end

  def assign_worker
    @shift.update_columns(user_id: @user.id)
    redirect_to new_shift_path
  end

  private

  def shift_params
    params.require(:shift).permit(:planning_id, :user_id, :start_date)
  end

  def retrieve_shift
    @shift ||= Shift.find(params[:shift_id])
  end

  def retrieve_user
    @user ||= User.find(params[:shift][:user_id])
  end

  def retrieve_planning
    @planning ||= Planning.find(1)
  end
end
