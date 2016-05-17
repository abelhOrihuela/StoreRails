class CreateSalesProducts < ActiveRecord::Migration
  def change
    create_table :products_sales, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :sale, index: tru
    end
  end
end
