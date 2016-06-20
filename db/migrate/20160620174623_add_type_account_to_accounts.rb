class AddTypeAccountToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :type_account, :string
  end
end
