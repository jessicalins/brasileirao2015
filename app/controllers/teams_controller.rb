class TeamsController < ApplicationController
	before_action :set_team, only: [:show, :edit, :update, :destroy]

	def index
		@teams = Team.all
	end

	def new 
		@team = Team.new 
	end

	def create
		@team = Team.new(team_params)
		if @team.save
			redirect_to teams_path, notice: 'Time adicionado com sucesso!'
		else
			render :new  
		end
	end

	def edit
		@team = Team.find(params[:id])
	end

	def show
		@team = Team.find(params[:id])
	end

	def update
		if @team.update(team_params)
			redirect_to @team, notice: 'Time atualizado com sucesso!'
		else
			render :edit
		end
	end

	def destroy
		@team.destroy
		redirect_to teams_path, notice: 'Time excluído com sucesso!'
	end

	private
	    def set_team
	      @team = Team.find(params[:id])
	    end

		def team_params
	      params.require(:team).permit(:name, :state, :city)
	    end
end
