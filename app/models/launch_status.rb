class LaunchStatus < ActiveRecord::Base
  has_many :features

  attr_accessible :description, :name, :id
end
