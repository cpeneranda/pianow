class PianosController < ApplicationController
  def index
    @pianos = Piano.near(params['address-search'], 10).where.not(latitude: nil)
    @hash = Gmaps4rails.build_markers(@pianos) do |piano, marker|
      marker.lat piano.latitude
      marker.lng piano.longitude
    end
  end

  def show
    @piano = Piano.find(params[:id])
    @booking = Booking.new
  end

  def new
    @piano = Piano.new
  end

  def create
    @piano = Piano.new(piano_params)
    @piano.user = current_user
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
    params.require(:piano).permit(:title, :description, :address, :category, :price, :photo)
  end
end
