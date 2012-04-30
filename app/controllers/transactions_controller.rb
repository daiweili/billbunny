class TransactionsController < ApplicationController
  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @transactions }
    end
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
    @transaction = Transaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @transaction }
    end
  end

  # GET /transactions/new
  # GET /transactions/new.json
  def new
    @transaction = Transaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @transaction }
    end
  end

  # GET /transactions/1/edit
  def edit
    @transaction = Transaction.find(params[:id])
  end

  # POST /transactions
  # POST /transactions.json
  def create
    puts params
    puts params[:person1]
    @transaction = Transaction.new(params[:transaction])

    person1 = params[:person1]
    person2 = params[:person2]
    person3 = params[:person3]

    owner_id = params[:transaction][:owner_id]
    total = params[:transaction][:total]
    split_amount = total

    person1_hash = {"uid1"=>owner_id, "uid2"=>"665735064", "amount"=>split_amount}
    puts person1_hash
    @person1_entry = LoanDebt.new(person1_hash)
    @person1_entry.save

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, :notice => 'Transaction was successfully created.' }
        format.json { render :json => @transaction, :status => :created, :location => @transaction }
      else
        format.html { render :action => "new" }
        format.json { render :json => @transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transactions/1
  # PUT /transactions/1.json
  def update
    @transaction = Transaction.find(params[:id])

    respond_to do |format|
      if @transaction.update_attributes(params[:transaction])
        format.html { redirect_to @transaction, :notice => 'Transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url }
      format.json { head :no_content }
    end
  end
end
