class PianosController < ApplicationController
  def index
    @piano = Piano.all
  end

  def show
    @piano = Piano.find(params[:id])
  end

  def new
    @piano = Piano.new
  end

  def create
    @piano = Piano.new(piano_params)
    if @piano.save
      redirect_to piano_path(@piano)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @piano = Piano.find(params[:id])
    @piano.destroy
    redirect_to pianos_path(@piano)
  end

private

 def piano_params
    params.require(:piano).permit(:name)
  end
end
