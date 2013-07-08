class AddTitleToQaActivities < ActiveRecord::Migration
  def change
    add_column :qa_activities, :title, :string
  end
end
