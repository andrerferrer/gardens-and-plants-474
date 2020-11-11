class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find( params[:id] )
    @plant = Plant.new
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(strong_params)
    if @garden.save
      redirect_to garden_path(@garden.id)
    else
      render :new
    end
  end

  private 

  def strong_params
    params.require(:garden).permit(:name, :banner_url)
  end
end
