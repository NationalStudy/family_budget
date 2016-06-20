class AddTypeAccountIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :id_type_account, :integer
  end
end
