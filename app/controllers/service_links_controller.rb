class ServiceLinksController < ApplicationController
    before_action :set_service_link, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: ServiceLink.all, status: :ok
    end

    def show
        render json: @service_link, status: :ok
    end

    def create
        service_link = ServiceLink.create!(service_link_params)
        render json: service_link, status: :created
    end

    def update
        @service_link.update!(service_link_params)
        render json: @service_link, status: :accepted
    end

    def destroy
        @service_link.destroy
        head :no_content
    end
    
    private

    def set_service_link
        @service_link = ServiceLink.find(params[:id])
    end

    def service_link_params
        params.permit(:service_id, :user_id, :accepted, :user_access_level, :service_access_profile, :service_access_medical_profile)
    end

    def render_not_found_response
        render json: {error: "Service Link not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
