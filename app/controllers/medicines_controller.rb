class MedicinesController < ApplicationController
    before_action :set_medicine, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Medicine.all, status: :ok
    end

    def show
        render json: @medicine, status: :ok
    end

    def create
        medicine = Station.create!(medicine_params)
        render json: medicine, status: :created
    end

    def update
        @medicine.update!(medicine_params)
        render json: @medicine, status: :accepted
    end

    def destroy
        @medicine.destroy
        head :no_content
    end
    
    private

    def set_medicine
        @medicine = Medicine.find(params[:id])
    end

    def medicine_params
        params.permit(:name, :most_common_usage, :drug_class)
    end

    def render_not_found_response
        render json: {error: "Medicine not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
