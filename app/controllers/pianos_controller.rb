class PianosController < ApplicationController
  def index
    @pianos = Piano.all

    @pianos = Piano.where.not(latitude: nil)

    @hash = Gmaps4rails.build_markers(@pianos) do |piano, marker|
      marker.lat piano.latitude
      marker.lng piano.longitude
    end
  end

  def show
    @piano = Piano.find(params[:id])
  end

  def new
    @piano = Piano.new
  end

  def create
    @piano = Piano.new(piano_params)
    @piano.user = current_user
    if @piano.save
      redirect_to pianos_path(@piano)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

 def piano_params
    params.require(:piano).permit(:title, :description, :address, :category, :price, :photo)
  end
end
