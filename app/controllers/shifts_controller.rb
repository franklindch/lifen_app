class ShiftsController < ApplicationController
  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
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
    pemit(:shift).params(:first_name, :status)
  end
end
