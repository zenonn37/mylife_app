class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  before_action :new_transaction, only: [:new,:credit,:debit]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
    @sum = Transaction.sum('credit')
    #myTest = Transaction.new
    #@test.myTest.testing
    go = Test.new("hello")
    @go = go.speak(8)
    @go2 = go.addAll(10,5,3,2)

  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show

    #@transaction.excessive ? @overSpent ="you over spent" : @overSpent ="no issues we this transaction"
    

  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  def credit
     @transaction = Transaction.new
  end
  def debit
    @transaction = Transaction.new
    
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @transaction }
      else
        format.html { render action: 'new' }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def new_transaction
      @transaction = Transaction.new
      
    end
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:name, :credit,:debit, :trans_type,:cleared)
    end
end
