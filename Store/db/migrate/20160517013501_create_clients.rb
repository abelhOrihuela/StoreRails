class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.decimal :balance
      t.integer :type_client_id

      t.timestamps null: false
    end
  end
end
