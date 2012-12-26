class MissionController < ApplicationController

	def index
		@missions = Mission.all
	end

	def new
	end

	def create
		@mission = Mission.new(params[:mission])
		@mission.save
		redirect_to :mission => :index
	end
end
