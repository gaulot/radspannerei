class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :article
      t.string :order_number
      t.text :note
      t.string :amount
      t.string :deliveryman
      t.string :filledin_by
      t.datetime :ordered_date
      t.datetime :arrived_date

      t.timestamps
    end
  end
end
