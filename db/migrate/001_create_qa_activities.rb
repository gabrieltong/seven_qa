class CreateQaActivities < ActiveRecord::Migration
  def change
    create_table :qa_activities do |t|
      t.datetime :hold_at
      t.string :area
      t.text :works
      t.integer :deal
      t.string :speaker
      t.string :partner
      t.text :contact
      t.text :sponsor
    end
  end
end
