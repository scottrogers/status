class CreateFeatures < ActiveRecord::Migration

  def change
    create_table :features do |t|
      t.string :title
      t.datetime :started
      t.datetime :ended
      t.text :about
      t.string :status
      t.decimal :progress
      t.string :version
      t.references :user
      t.references :launch_status

      t.timestamps
    end
    add_index :features, :user_id
  end
end
