class RentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  # GET /rents
  def index
    @rents = Rent.all
  end

  # GET /rents/1
  def show
  end

  # GET /rents/new
  def new
    @rent = Rent.new
  end

  # GET /rents/1/edit
  def edit
  end

  # POST /rents
  def create
    @rent = Rent.new(rent_params)

    if @rent.save
      redirect_to @rent, notice: 'Rent was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rents/1
  def update
    if @rent.update(rent_params)
      redirect_to @rent, notice: 'Rent was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rents/1
  def destroy
    @rent.destroy
    redirect_to rents_url, notice: 'Rent was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rent_params
      params.require(:rent).permit(:customer_id, :property_id, :value, :start_date, :end_date)
    end
end
