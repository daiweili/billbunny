class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :pid
      t.string :name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
