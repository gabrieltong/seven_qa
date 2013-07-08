class CreateQaActivitiesQaClients < ActiveRecord::Migration
  def change
    create_table :qa_activities_qa_clients do |t|
      t.integer :qa_client_id
      t.integer :qa_activity_id
    end
  end
end
