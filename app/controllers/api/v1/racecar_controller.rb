class Api::V1::RacecarController < ApplicationController

  def index
		@racecars = Racecar.all
		render json: @racecars, status: :ok
	end

	def create
		@racecar = Racecar.new(racecars_params)
        if @racecar.save
            render json: @racecar
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
