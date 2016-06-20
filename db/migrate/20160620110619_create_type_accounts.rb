class CreateTypeAccounts < ActiveRecord::Migration
  def change
    create_table :type_accounts do |t|
      t.string :type_account

      t.timestamps null: false
    end
  end
end
