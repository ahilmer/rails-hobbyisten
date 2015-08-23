class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
	    t.text :description
      t.datetime :take_place_timestamp
      t.string :explicit_location
      t.integer :max_participants
      t.column :creator_id, :integer
      t.references :location
      t.timestamps
    end
  end
end
