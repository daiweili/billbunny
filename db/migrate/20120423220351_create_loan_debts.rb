class CreateLoanDebts < ActiveRecord::Migration
  def change
    create_table :loan_debts do |t|
      t.integer :uid1
      t.integer :uid2
      t.float :amount
      t.references :transaction

      t.timestamps
    end
    add_index :loan_debts, :transaction_id
  end
end
