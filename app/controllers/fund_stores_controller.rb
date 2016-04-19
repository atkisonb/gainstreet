class FundStoresController < ApplicationController
  before_action :set_fund_store, only: [:show, :edit, :update, :destroy]

  # GET /fund_stores
  # GET /fund_stores.json
  def index
    @fund_stores = FundStore.all
  end

  # GET /fund_stores/1
  # GET /fund_stores/1.json
  def show
  end

  # GET /fund_stores/new
  def new
    @fund_store = FundStore.new
  end

  # GET /fund_stores/1/edit
  def edit
  end

  # POST /fund_stores
  # POST /fund_stores.json
  def create
    @fund_store = FundStore.new(fund_store_params)

    respond_to do |format|
      if @fund_store.save
        format.html { redirect_to @fund_store, notice: 'Fund store was successfully created.' }
        format.json { render :show, status: :created, location: @fund_store }
      else
        format.html { render :new }
        format.json { render json: @fund_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_stores/1
  # PATCH/PUT /fund_stores/1.json
  def update
    respond_to do |format|
      if @fund_store.update(fund_store_params)
        format.html { redirect_to @fund_store, notice: 'Fund store was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_store }
      else
        format.html { render :edit }
        format.json { render json: @fund_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_stores/1
  # DELETE /fund_stores/1.json
  def destroy
    @fund_store.destroy
    respond_to do |format|
      format.html { redirect_to fund_stores_url, notice: 'Fund store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_store
      @fund_store = FundStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_store_params
      params.fetch(:fund_store, {})
    end
end
