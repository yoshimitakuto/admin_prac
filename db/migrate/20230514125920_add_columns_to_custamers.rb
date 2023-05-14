class AddColumnsToCustamers < ActiveRecord::Migration[6.1]
  def change
      add_column :custamers, :last_name, :string
      add_column :custamers, :first_name, :string
      add_column :custamers, :furigana_last_name, :string
      add_column :custamers, :furigana_first_name, :string
      add_column :custamers, :customer_adress, :string
      add_column :custamers, :post_code, :integer
      add_column :custamers, :telephone_number, :integer
      add_column :custamers, :withdrawal_flag, :integer
  end
end
