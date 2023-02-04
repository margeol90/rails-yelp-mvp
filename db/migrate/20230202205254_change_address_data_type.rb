class ChangeAddressDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :address, :string
  end
end
