class CreateTypeClients < ActiveRecord::Migration
  def change
    create_table :type_clients do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
