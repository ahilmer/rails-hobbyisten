class CreateEventsHobbies < ActiveRecord::Migration
  def change
    create_table :events_hobbies do |t|

      t.timestamps
    end
  end
end
