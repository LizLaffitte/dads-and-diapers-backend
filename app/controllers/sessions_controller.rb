class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.user_id
            render json: UserSerializer.new(@user)
        else
            render json: {errors: @user.errors.full_messages}, status: unprocessable_entity
        end
    end
end
