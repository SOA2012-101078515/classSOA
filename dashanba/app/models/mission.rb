class Mission < ActiveRecord::Base
  attr_accessible :c_name, :gift, :mission_id, :place, :request, :start, :v_name, :num_of_people, :user_id, :venderdetail_id

	belongs_to :user
	belongs_to :venderdetail
end
