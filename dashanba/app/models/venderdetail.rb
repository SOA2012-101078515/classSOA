class Venderdetail < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone

  has_many :missions
  has_many :uservenders ,:through=>:missions, :source => :user
end
