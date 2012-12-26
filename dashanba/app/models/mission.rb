class Mission < ActiveRecord::Base
  attr_accessible :c_name, :gift, :mission_id, :place, :request, :start, :v_name, :num_of_people

	belongs_to :customer
	belongs_to :vender
end
