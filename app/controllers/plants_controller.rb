class PlantsController < ApplicationController
    def create
        @plant = Plant.new(strong_params)

        # find the garden and associate it to the plant
        garden = Garden.find(params[:garden_id])
        @plant.garden = garden

        @plant.save!
        redirect_to garden_path(@plant.garden.id)
    end
    
    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
        redirect_to garden_path(@plant.garden.id)
    end

    private

    def strong_params
        params.require(:plant).permit(:name, :picture_url)
    end
end
