class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def get
        if (params[:id])
            # find by id
            render json: Post.where({ id: params[:id] })
        elsif (params[:user_id])
            # find by user id
            render json: Post.where({ user_id: params[:user_id] })
        else
            # find all
            render json: Post.all
        end
    end
    def create
        render json: Post.create(user_id: params[:user_id], content: params[:content])
    end
end
