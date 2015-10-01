class CompetitionsController < ApplicationController

	def new
		@competition = Competition.new
	end

	def create
		@competition = Competition.new safe_competition_params
		@users = User.where(:id => params[:participants])
		@competition.users.destroy_all
		@competition.users << @users
		if @competition.save
			redirect_to competition_path(@competition)
		else
			redirect_to new_competition_path
		end
	end

	def show
		@competition = Competition.find(params[:id])
	end

	def edit
		@competition = Competition.find(params[:id])
	end

	def update
		@competition = Competition.find(params[:id])
		@users = User.where(:id => params[:participants])
		@competition.users << @users
		if @competition.update safe_competition_params
			redirect_to competition_path(@competition)
		else
			redirect_to new_competition_path
		end
	end



	private

	def safe_competition_params
		params.require(:competition).permit(:title, :start, :end)
	end

end
