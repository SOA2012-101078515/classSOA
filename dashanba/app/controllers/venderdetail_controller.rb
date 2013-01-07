class VenderdetailController < ApplicationController

	def index
		@venderdetails = Venderdetail.first.missions
	end

end
