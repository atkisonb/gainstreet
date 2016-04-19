class FundCategorizationsController < ApplicationController
  before_action :set_fund_categorization, only: [:show, :edit, :update, :destroy]

  # GET /fund_categorizations
  # GET /fund_categorizations.json
  def index
    @fund_categorizations = FundCategorization.all
  end

  # GET /fund_categorizations/1
  # GET /fund_categorizations/1.json
  def show
  end

  # GET /fund_categorizations/new
  def new
    @fund_categorization = FundCategorization.new
  end

  # GET /fund_categorizations/1/edit
  def edit
  end

  # POST /fund_categorizations
  # POST /fund_categorizations.json
  def create
    @fund_categorization = FundCategorization.new(fund_categorization_params)

    respond_to do |format|
      if @fund_categorization.save
        format.html { redirect_to @fund_categorization, notice: 'Fund categorization was successfully created.' }
        format.json { render :show, status: :created, location: @fund_categorization }
      else
        format.html { render :new }
        format.json { render json: @fund_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_categorizations/1
  # PATCH/PUT /fund_categorizations/1.json
  def update
    respond_to do |format|
      if @fund_categorization.update(fund_categorization_params)
        format.html { redirect_to @fund_categorization, notice: 'Fund categorization was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_categorization }
      else
        format.html { render :edit }
        format.json { render json: @fund_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_categorizations/1
  # DELETE /fund_categorizations/1.json
  def destroy
    @fund_categorization.destroy
    respond_to do |format|
      format.html { redirect_to fund_categorizations_url, notice: 'Fund categorization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_categorization
      @fund_categorization = FundCategorization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_categorization_params
      params.require(:fund_categorization).permit(:fundstore_category_id, :fund_id)
    end
end
