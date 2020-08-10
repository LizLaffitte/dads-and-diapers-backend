class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update]
    
    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: UserSerializer.new(@user), status: :created
        else 
            render json: {error: user.errors.full_messages.to_sentence, status: :unprocessable_entity}
        end

    end

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end
    
    def show
        render json: UserSerializer.new(@user)
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def find_user
        @user = User.find_by_id(params[:id])
    end

end
