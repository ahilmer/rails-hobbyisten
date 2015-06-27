class AddEventIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :hobby_id, :integer
  end
end
