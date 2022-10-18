class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    
    def show
        client = Client.find(params[:id])
       render json: client, status: :ok
       
    end

    private

    def not_found
        render json: {error: "Client not found"}, status: :not_found
    end
end
