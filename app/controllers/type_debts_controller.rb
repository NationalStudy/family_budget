class TypeDebtsController < ApplicationController
  before_action :set_type_debt, only: [:show, :edit, :update, :destroy]

  # GET /type_debts
  # GET /type_debts.json
  def index
    @type_debts = TypeDebt.all
  end

  # GET /type_debts/1
  # GET /type_debts/1.json
  def show
  end

  # GET /type_debts/new
  def new
    @type_debt = TypeDebt.new
  end

  # GET /type_debts/1/edit
  def edit
  end

  # POST /type_debts
  # POST /type_debts.json
  def create
    @type_debt = TypeDebt.new(type_debt_params)

    respond_to do |format|
      if @type_debt.save
        format.html { redirect_to @type_debt, notice: 'Type debt was successfully created.' }
        format.json { render :show, status: :created, location: @type_debt }
      else
        format.html { render :new }
        format.json { render json: @type_debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_debts/1
  # PATCH/PUT /type_debts/1.json
  def update
    respond_to do |format|
      if @type_debt.update(type_debt_params)
        format.html { redirect_to @type_debt, notice: 'Type debt was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_debt }
      else
        format.html { render :edit }
        format.json { render json: @type_debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_debts/1
  # DELETE /type_debts/1.json
  def destroy
    @type_debt.destroy
    respond_to do |format|
      format.html { redirect_to type_debts_url, notice: 'Type debt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_debt
      @type_debt = TypeDebt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_debt_params
      params.require(:type_debt).permit(:type_debt)
    end
end
