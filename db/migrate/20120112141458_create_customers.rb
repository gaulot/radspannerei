class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :lastname
      t.string :name
      t.string :street
      t.string :city
      t.string :phone
      t.string :email
      t.boolean :pkunde

      t.timestamps
    end
  end
end
