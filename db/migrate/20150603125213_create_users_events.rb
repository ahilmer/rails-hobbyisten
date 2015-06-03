class CreateUsersEvents < ActiveRecord::Migration
  def change
    create_table :users_events do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.datetime :date_of_entry
      t.binary :kicked

      t.timestamps
    end
  end
end
