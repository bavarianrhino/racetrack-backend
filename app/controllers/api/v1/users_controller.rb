class Api::V1::UsersController < ApplicationController

    def index
		@users = User.all
		render json: @users, status: :ok
	end

	def show
        @user = User.find(params[:id])
        render json: @user.as_json(:include => {:scores => {:include => :racecar}}), status: :ok
		# render json: @user.as_json(:include => :scores), status: :ok
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            # render json: { user: UserSerializer.new(@user) }, status: :created
            render json: @user.as_json(:include => :scores), status: :created
        else
            render json: { error: 'failed to create user....ryans message' }, status: :not_acceptable
        end
    end

    private
        def user_params
            params.require(:user).permit(:username, :password)
        end
end