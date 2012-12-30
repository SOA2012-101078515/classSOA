class Vender < ActiveRecord::Base
  attr_accessible :address, :name, :passwd, :phone, :realnamei

  has_many :missions
  has_many :uservenders, :through=>:missions, :source => :user
end
