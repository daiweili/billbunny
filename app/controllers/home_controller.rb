class HomeController < ApplicationController
  def index
    @to_receive = 0
    @to_pay = 0

    if current_user
      LoanDebt.where(:uid1 => current_user.uid).each do |xact|
        if xact.amount != nil
          @to_receive += xact.amount
        end
      end

      LoanDebt.where(:uid2 => current_user.uid).each do |xact|
        if xact.amount != nil
          @to_pay += xact.amount
        end
      end
    end
  end
end
