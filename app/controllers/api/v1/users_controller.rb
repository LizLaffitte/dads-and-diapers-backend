class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update]
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
