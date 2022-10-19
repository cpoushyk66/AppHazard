class ServicesController < ApplicationController
    before_action :set_service, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Service.all, status: :ok
    end

    def show
        render json: @service, status: :ok
    end

    def create
        service = Service.create!(service_params)
        render json: service, status: :created
    end

    def update
        @service.update!(service_params)
        render json: @service, status: :accepted
    end

    def destroy
        @service.destroy
        head :no_content
    end
    
    private

    def set_service
        @service = Service.find(params[:id])
    end

    def service_params
        params.permit(:station_id, :service_type, :service_phone_number, :active, :accepting_links)
    end

    def render_not_found_response
        render json: {error: "Service not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
