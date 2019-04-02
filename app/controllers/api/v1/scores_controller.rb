class Api::V1::ScoresController < ApplicationController

	def index
		@scores = Score.all
		render json: @scores, status: :ok
    end
    
    def show
        @score = Score.find(params[:id])
        render json: @score.as_json(:include => {:user => {:include => :racecars}}), status: :ok
		# render json: @user.as_json(:include => :scores), status: :ok
    end

    def create
        @score = Score.create(scores_params)
        # @score = Score.create(pokemon_id: poke_user_params['pokemon_id'], user_id: poke_user_params['user_id'])
        if @score.valid?
            render json: @score, status: :created
            # render json: @score.as_json(:include => :users), status: :created
		else
            render json: { error: 'failed to create score....Ryans Error' }
			# render json: @score.errors.full_messages, status: :unprocessable_entity
		end
	end

	private

	def scores_params
		params.permit(:score).permit(:racecar_id, :user_id, :time)
    end
    
end
