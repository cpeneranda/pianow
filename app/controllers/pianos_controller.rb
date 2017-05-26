class PianosController < ApplicationController
  def index
    if params[:search]
      @pianos = Piano.near(params[:search], 10).where.not(latitude: nil)
    else
      @pianos = Piano.all
    end

    @hash = Gmaps4rails.build_markers(@pianos) do |piano, marker|
      marker.lat piano.latitude
      marker.lng piano.longitude
      marker.picture ({
                        "url" => ApplicationController.helpers.asset_path("marker.png"),
                        "width" => 40,
                        "height" => 74,
        })
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

  def gmaps4rails_marker_picture
    {
     "picture" => "/images/heart.png",
     "width" => 20,
     "height" => 20,
     "marker_anchor" => [ 5, 10],
     "shadow_picture" => "/images/morgan.png" ,
     "shadow_width" => "110",
     "shadow_height" => "110",
     "shadow_anchor" => [5, 10],
    }
  end

private

 def piano_params
    params.require(:piano).permit(:title, :description, :address, :brand_id, :category, :price, :photo)
  end
end
