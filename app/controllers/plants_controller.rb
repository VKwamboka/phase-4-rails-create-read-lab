class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    
    def show
        # params[:id] refers to the dynamic part of our route, defined by :id
        # a request to /plants/2 would give params[:id] a value of 2
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: :created
    end


end
