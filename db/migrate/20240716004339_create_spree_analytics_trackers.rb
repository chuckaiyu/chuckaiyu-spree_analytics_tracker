class CreateSpreeAnalyticsTrackers < ActiveRecord::Migration[7.1]
  def change
    create_table :spree_analytics_trackers do |t|
      t.references :store, null: false
      t.string :analytics_id, null: false
      t.boolean :active, default: true, index: true
      t.integer :engine, default: 0, index: true
      t.timestamps
    end
  end
end
