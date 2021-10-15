class GardensController < ApplicationController
  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    # Ajouter logique CalcSquares
  end

  def index
    # To Do
  end

  def show
    # To Do
  end

  # Ajouter Destroy

  private

  def garden_params
    params.require(:garden).permit(:length, :width, :latitude, :longitude, :shoe_size, :name)
  end
  
end
