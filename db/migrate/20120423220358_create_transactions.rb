class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :total
      t.integer :owner_id
      t.integer :transaction_xid
      t.string :person1
      t.string :person2
      t.string :person3
      t.timestamps
      attr_accessible :total, :person1, :person2, :person3
    end
  end
end
