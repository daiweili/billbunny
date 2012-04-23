class LoanDebtsController < ApplicationController
  # GET /loan_debts
  # GET /loan_debts.json
  def index
    @loan_debts = LoanDebt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @loan_debts }
    end
  end

  # GET /loan_debts/1
  # GET /loan_debts/1.json
  def show
    @loan_debt = LoanDebt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @loan_debt }
    end
  end

  # GET /loan_debts/new
  # GET /loan_debts/new.json
  def new
    @loan_debt = LoanDebt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @loan_debt }
    end
  end

  # GET /loan_debts/1/edit
  def edit
    @loan_debt = LoanDebt.find(params[:id])
  end

  # POST /loan_debts
  # POST /loan_debts.json
  def create
    @loan_debt = LoanDebt.new(params[:loan_debt])

    respond_to do |format|
      if @loan_debt.save
        format.html { redirect_to @loan_debt, :notice => 'Loan debt was successfully created.' }
        format.json { render :json => @loan_debt, :status => :created, :location => @loan_debt }
      else
        format.html { render :action => "new" }
        format.json { render :json => @loan_debt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /loan_debts/1
  # PUT /loan_debts/1.json
  def update
    @loan_debt = LoanDebt.find(params[:id])

    respond_to do |format|
      if @loan_debt.update_attributes(params[:loan_debt])
        format.html { redirect_to @loan_debt, :notice => 'Loan debt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @loan_debt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_debts/1
  # DELETE /loan_debts/1.json
  def destroy
    @loan_debt = LoanDebt.find(params[:id])
    @loan_debt.destroy

    respond_to do |format|
      format.html { redirect_to loan_debts_url }
      format.json { head :no_content }
    end
  end
end
