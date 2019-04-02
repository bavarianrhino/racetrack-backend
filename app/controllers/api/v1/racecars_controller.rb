class Api::V1::RacecarsController < ApplicationController

    def index
		@racecars = Racecar.all
		render json: @racecars, status: :ok
    end
    
    def show
        @racecar = Racecar.find(params[:id])
        render json: @racecar.as_json(:include => {:scores => {:include => :user}}), status: :ok
		# render json: @user.as_json(:include => :scores), status: :ok
    end

	def create
		@racecar = Racecar.create(racecars_params)
        if @racecar.valid?
            render json: @racecar.as_json(:include => :users), status: :created
			# render json: @racecar, status: :created
        else
            render json: { error: 'failed to create racecar....Ryans Error' }
			# render json: @racecar.errors.full_messages, status: :unprocessable_entity
		end
	end

	private

	def racecars_params
		params.require(:racecar).permit(:name, :up, :down, :left, :right)
    end
    
end
