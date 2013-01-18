class CreateLaunchStatuses < ActiveRecord::Migration

  def change
    create_table :launch_statuses do |t|
      t.string :name
      t.text :description
      t.references :feature

      t.timestamps
    end


  end
end
