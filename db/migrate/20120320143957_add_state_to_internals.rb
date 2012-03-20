class AddStateToInternals < ActiveRecord::Migration
  def change
    change_table(:internals) do |t|
      t.column :status, :integer
    end
  end
end
