class Vender < ActiveRecord::Base
  attr_accessible :address, :name, :passwd, :phone, :realnamei

	has_many :missions
end
