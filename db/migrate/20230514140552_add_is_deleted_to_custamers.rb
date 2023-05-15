class AddIsDeletedToCustamers < ActiveRecord::Migration[6.1]
  def change
    add_column :custamers, :is_deleted, :boolean, default: false
  end
end
