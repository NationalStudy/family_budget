class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :name_debt
      t.float :amount_debt

      t.timestamps null: false
    end
  end
end
