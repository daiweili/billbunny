class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :total
      t.integer :owner_id
      t.integer :transaction_xid

      t.timestamps
    end
  end
end
