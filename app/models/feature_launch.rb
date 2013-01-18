class FeatureLaunch < ActiveRecord::Base
  belongs_to :feature
  belongs_to :launch_status
end
