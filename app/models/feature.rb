class Feature < ActiveRecord::Base
  # attr_accessible :user_attributes

  belongs_to :user
  belongs_to :launch_status


  attr_accessible :about, :ended, :progress, :started, :status, :title, :user, :id, :user_id, :launch_status, :launch_status_id

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :launch_status

end
