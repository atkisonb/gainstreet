class FundstoreCategoriesController < ApplicationController
  before_action :set_fundstore_category, only: [:show, :edit, :update, :destroy]

  # GET /fundstore_categories
  # GET /fundstore_categories.json
  def index
    @fundstore_categories = FundstoreCategory.all
  end

  # GET /fundstore_categories/1
  # GET /fundstore_categories/1.json
  def show
  end

  # GET /fundstore_categories/new
  def new
    @fundstore_category = FundstoreCategory.new
  end

  # GET /fundstore_categories/1/edit
  def edit
  end

  # POST /fundstore_categories
  # POST /fundstore_categories.json
  def create
    @fundstore_category = FundstoreCategory.new(fundstore_category_params)

    respond_to do |format|
      if @fundstore_category.save
        format.html { redirect_to @fundstore_category, notice: 'Fundstore category was successfully created.' }
        format.json { render :show, status: :created, location: @fundstore_category }
      else
        format.html { render :new }
        format.json { render json: @fundstore_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundstore_categories/1
  # PATCH/PUT /fundstore_categories/1.json
  def update
    respond_to do |format|
      if @fundstore_category.update(fundstore_category_params)
        format.html { redirect_to @fundstore_category, notice: 'Fundstore category was successfully updated.' }
        format.json { render :show, status: :ok, location: @fundstore_category }
      else
        format.html { render :edit }
        format.json { render json: @fundstore_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundstore_categories/1
  # DELETE /fundstore_categories/1.json
  def destroy
    @fundstore_category.destroy
    respond_to do |format|
      format.html { redirect_to fundstore_categories_url, notice: 'Fundstore category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundstore_category
      @fundstore_category = FundstoreCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fundstore_category_params
      params.require(:fundstore_category).permit(:category_heading, :category_subheading, :fund_store_id, :fund_id)
    end
end
