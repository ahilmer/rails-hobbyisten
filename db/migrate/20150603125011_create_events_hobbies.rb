class CreateEventsHobbies < ActiveRecord::Migration
  def change
    create_table :events_hobbies do |t|
      t.belongs_to :event
      t.belongs_to :hobby

      t.timestamps
    end
  end
end
