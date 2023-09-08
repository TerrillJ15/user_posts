class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def get
        if (params[:id])
            # find by id
            render json: User.where({ id: params[:id] })
        elsif (params[:username])
            # find by username
            render json: User.where({ username: params[:username] })
        else
            # find all
            render json: User.all
        end
    end
    def create
        render json: User.create(username: params[:username], email: params[:email], first_name: params[:first_name], last_name: params[:last_name],)
    end
end
