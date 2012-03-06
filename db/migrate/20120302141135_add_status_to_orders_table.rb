class AddStatusToOrdersTable < ActiveRecord::Migration
  def change
    change_table(:orders) do |t|
      t.column :status, :integer
    end
  end
end
