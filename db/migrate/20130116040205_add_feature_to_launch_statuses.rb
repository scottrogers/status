class AddFeatureToLaunchStatuses < ActiveRecord::Migration
  def change
    add_column :launch_statuses, :featured_id, :string
  end
end