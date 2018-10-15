class ShiftsController < ApplicationController
  before_action :retrieve_user, :retrieve_planning, only: [:create]

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.planning = @planning
    @shift.user = @user
    if @shift.save
      render :index
    else
      render :new
    end
  end

  def index
    @shifts = Shift.all
  end

  private

  def shift_params
    permit(:shift).params(:planning_id, :user_id, :start_date)
  end

  def retrieve_user
    @user ||= User.find(params[:user_id])
  end

  def retrieve_planning
    @planning ||= Planning.find(id: 1)
  end
end
