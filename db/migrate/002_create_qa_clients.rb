class CreateQaClients < ActiveRecord::Migration
  def change
    create_table :qa_clients do |t|
      t.string :name
      t.integer :phone
      t.integer :qq
    end
  end
end
