class HomeController < ApplicationController
  def index
    @to_receive = 0
    @to_pay = 0
    
    if @current_user
      
      print @current_user
      money_to_receive_xacts = LoanDebt.where(:uid1 => @current_user.uid)
      money_to_receive_xacts do |xact|
        @to_receive += xact.amount
      end

      money_owed_xacts = LoanDebt.where(:uid2 => @current_user.uid)
      money_owed_xacts do |xact|
        @to_pay += xact.amount
      end
    end
  end
end
