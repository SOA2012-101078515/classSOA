class MissionController < ApplicationController

	def index
	end

	def new
	end

	def create
		@mission = Mission.new(params[:mission])
		@mission.save
		redirect_to :mission => :index
	end
end
