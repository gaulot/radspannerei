class CreateInternals < ActiveRecord::Migration
  def change
    create_table :internals do |t|
      t.string :article
      t.string :order_number
      t.text :note
      t.string :amount
      t.string :deliveryman
      t.string :filledin_by
      t.datetime :order_arrived

      t.timestamps
    end
  end
end
