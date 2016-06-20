class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name_account
      t.float :amount_account

      t.timestamps null: false
    end
  end
end
