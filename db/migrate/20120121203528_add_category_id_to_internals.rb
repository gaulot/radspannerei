class AddCategoryIdToInternals < ActiveRecord::Migration
  def up
    add_column :internals, :category_id, :integer
  end

  def down
    remove_column :internals, :category_id
  end

end
