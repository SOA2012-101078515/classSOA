class Customer < ActiveRecord::Base
  attr_accessible :name, :phone, :record

	has_one :missions
end
