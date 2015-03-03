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
			redirect_to players_path, notice: 'Jogador adicionado com sucesso!'
		else
			render :new  
		end
	end

	def update
		if @player.update(player_params)
			redirect_to @player, notice: 'Jogador atualizado com sucesso!'
		else
			render :edit
		end
	end

	def destroy
		@player.destroy
		redirect_to players_path, notice: 'Jogador excluído com sucesso!'
	end

	private
    def set_player
      @player = Player.find(params[:id])
    end

		def player_params
      params.require(:player).permit(:name, :position, :age, :picture, :team_id)
    end
end
