class ConditionsController < ApplicationController
    before_action :set_condition, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Condition.all, status: :ok
    end

    def show
        render json: @condition, status: :ok
    end

    def create
        condition = Condition.create!(condition_params)
        render json: condition, status: :created
    end

    def update
        @condition.update!(condition_params)
        render json: @condition, status: :accepted
    end

    def destroy
        @condition.destroy
        head :no_content
    end
    
    private

    def set_condition
        @condition = Condition.find(params[:id])
    end

    def condition_params
        params.permit(:name, :limitations, :duration, :treatable, :curable)
    end

    def render_not_found_response
        render json: {error: "Condition not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
