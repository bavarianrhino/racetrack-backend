class Api::V1::RacecarsController < ApplicationController

  def index
		@racecars = Racecar.all
		render json: @racecars, status: :ok
	end

	def create
		@racecar = Racecar.create(racecars_params)
        if @racecar.save
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
