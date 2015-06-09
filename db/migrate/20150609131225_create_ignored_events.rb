class CreateIgnoredEvents < ActiveRecord::Migration
  def change
    create_table :ignored_events do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.timestamps
    end
  end
end
