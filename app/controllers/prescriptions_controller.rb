class PrescriptionsController < ApplicationController
    before_action :set_prescription, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Prescription.all, status: :ok
    end

    def show
        render json: @prescription, status: :ok
    end

    def create
        prescription = Prescription.create!(prescription_params)
        render json: prescription, status: :created
    end

    def update
        @prescription.update!(prescription_params)
        render json: @prescription, status: :accepted
    end

    def destroy
        @prescription.destroy
        head :no_content
    end
    
    private

    def set_prescription
        @prescription = Prescription.find(params[:id])
    end

    def prescription_params
        params.permit(:medical_profile_id, :medicine_id, :prescriber_id, :prescribed_for, :dosage)
    end

    def render_not_found_response
        render json: {error: "Prescription not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
