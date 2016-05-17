class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :total
      t.decimal :total_parcial
      t.integer :client_id
      t.integer :seller_id

      t.timestamps null: false
    end
  end
end
