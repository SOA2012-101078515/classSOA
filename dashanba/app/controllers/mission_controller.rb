class MissionController < ApplicationController

	def index
		@missions = Mission.all
	end

	def new
	end

	def create
		@mission = Mission.new(params[:mission])
		if @mission.save
			Vender.confirm("changcheng.tu@gmail.com",@mission.c_name,@mission.start.to_s,@mission.num_of_people.to_s,@mission.gift,@mission.c_phone,@mission.c_email).deliver
			UserMailer.confirm(@mission.c_email,@mission.c_name,@mission.start.to_s,@mission.num_of_people.to_s,@mission.gift,@mission.c_phone).deliver

		end
		redirect_to :mission => :index
	end
end
