class PropertiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  def index
    @houses = Property.order(created_at: :desc).where(category: 0)
    @apartments = Property.order(created_at: :desc).where(category: 1)
    @lands = Property.order(created_at: :desc).where(category: 2)
  end

  # GET /properties/1
  def show
    @rents = Rent.where(property: @property)
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  def create
    @property = Property.new(property_params)
    @property.images.attach(params[:property][:images])

    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    redirect_to properties_url, notice: 'Property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_params
      params.require(:property).permit(:description, :address, :category, images: [])
    end
end
