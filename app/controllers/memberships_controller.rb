class MembershipsController < ApplicationController

    def create
        member = Membership.create!(member_params)
        render json: member, status: :created

    end




    private 
    def member_params
        params.permit(:gym_id, :client_id, :charge )
    end
end
