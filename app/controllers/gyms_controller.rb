class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def show
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    end

    def destroy
       Gym.find(params[:id]).destroy
       head :no_content
    end

    private

    def not_found
        render json: {error: "Gym not found"}, status: :not_found
    end
end
