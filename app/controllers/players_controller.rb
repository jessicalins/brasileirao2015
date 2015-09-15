class PlayersController < ApplicationController
	before_action :set_player, only: [:show, :edit, :update, :destroy]

	def index
		@players = Player.all
	end

	def new 
		@player = Player.new 
	end

	def create
		@player = Player.new(player_params)
		if @player.save
			redirect_to team_path(@player.team)
		else
			params[:team_id] = @player.team_id
			render :new  
		end
	end

	def update
		if @player.update(player_params)
			redirect_to @player
		else
			render :edit
		end
	end

	def destroy
		@player.destroy
		redirect_to team_path(@player.team)
	end

	private
		def set_player
			@player = Player.find(params[:id])
		end

		def player_params
			params.require(:player).permit(:name, :position, :age, :picture, :team_id)
		end
end
