class MedicalProfilesController < ApplicationController
    before_action :set_medical_profile, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: MedicalProfile.all, status: :ok
    end

    def show
        render json: @medical_profile, status: :ok
    end

    def create
        medical_profile = MedicalProfile.create!(medical_profile_params)
        render json: medical_profile, status: :created
    end

    def update
        @medical_profile.update!(medical_profile_params)
        render json: @medical_profile, status: :accepted
    end

    def destroy
        @medical_profile.destroy
        head :no_content
    end
    
    private

    def set_medical_profile
        @medical_profile = MedicalProfile.find(params[:id])
    end

    def medical_profile_params
        params.permit(:user_id, :weight, :height, :hair_color, :eye_color, :race, :sex, :gender, :blood_type, :birth_date)
    end

    def render_not_found_response
        render json: {error: "Medical Profile not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
