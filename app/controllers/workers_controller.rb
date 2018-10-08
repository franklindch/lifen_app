class WorkersController < ApplicationController
  before_action :retrieve_worker, only: [:edit, :update]

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to shifts_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def worker_params
    .pemit(:worker).
  end

  def retrieve_worker
    @worker ||= Worker.find(params[:id])
  end
end
