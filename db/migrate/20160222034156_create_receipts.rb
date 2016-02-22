class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :payment_method
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
