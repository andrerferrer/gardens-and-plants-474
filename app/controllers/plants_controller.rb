class PlantsController < ApplicationController
    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
        redirect_to garden_path(@plant.garden.id)
    end
end
