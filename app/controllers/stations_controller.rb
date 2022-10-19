class StationsController < ApplicationController
    before_action :set_station, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Station.all, status: :ok
    end

    def show
        render json: @station, status: :ok
    end

    def create
        station = Station.create!(station_params)
        render json: station, status: :created
    end

    def update
        @station.update!(station_params)
        render json: @station, status: :accepted
    end

    def destroy
        @station.destroy
        head :no_content
    end
    
    private

    def set_station
        @station = Station.find(params[:id])
    end

    def station_params
        params.permit(:name, :city, :state, :street_address, :station_phone_number)
    end

    def render_not_found_response
        render json: {error: "Station not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
