class AddsCustomerIdToOrdersTable < ActiveRecord::Migration
  def up
    add_column :orders, :customer_id, :integer
  end

  def down
    remove_column :orders, :customer_id
  end
end
