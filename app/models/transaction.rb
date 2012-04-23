class Transaction < ActiveRecord::Base
  attr_accessible :date, :loan_debt, :owner_id, :total
  has_many :loan_debts
end
