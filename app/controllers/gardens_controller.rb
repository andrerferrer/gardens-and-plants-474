class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find( params[:id] )
    @empty_plant = Plant.new
  end
end
