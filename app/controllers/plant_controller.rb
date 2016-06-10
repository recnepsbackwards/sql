class PlantController < ApplicationController
  def identify
    #store input from plant name textbox into database
    #create local variable setting it equal to parameter from the textbox
    new_plant = params[:plant_name]
    #create instance variable to contain a plant object
    @plant = Plant.create!(name:new_plant)
    #save plant object to database
    @plant.save
    render
  end
end
