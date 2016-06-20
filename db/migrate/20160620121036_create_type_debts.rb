class CreateTypeDebts < ActiveRecord::Migration
  def change
    create_table :type_debts do |t|
      t.string :type_debt

      t.timestamps null: false
    end
  end
end
