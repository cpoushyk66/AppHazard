class DiagnosesController < ApplicationController
    before_action :set_diagnosis, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Diagnosis.all, status: :ok
    end

    def show
        render json: @diagnosis, status: :ok
    end

    def create
        diagnosis = Diagnosis.create!(diagnosis_params)
        render json: diagnosis, status: :created
    end

    def update
        @diagnosis.update!(diagnosis_params)
        render json: @diagnosis, status: :accepted
    end

    def destroy
        @diagnosis.destroy
        head :no_content
    end
    
    private

    def set_diagnosis
        @diagnosis = Diagnosis.find(params[:id])
    end

    def diagnosis_params
        params.permit(:medical_profile_id, :condition_id, :doctor_id, :notes)
    end

    def render_not_found_response
        render json: {error: "Station not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
