class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Profile.all, status: :ok
    end

    def show
        render json: @profile, status: :ok
    end

    def create
        profile = Profile.create!(profile_params)
        render json: profile, status: :created
    end

    def update
        @profile.update!(profile_params)
        render json: @profile, status: :accepted
    end

    def destroy
        @profile.destroy
        head :no_content
    end
    
    private

    def set_profile
        @profile = Profile.find(params[:id])
    end

    def profile_params
        params.permit(:first_name, :middle_names, :last_name, :email, :phone_number, :image, :user_id)
    end

    def render_not_found_response
        render json: {error: "Profile not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
