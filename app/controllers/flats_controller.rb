class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @flats = policy_scope(Flat).search_by_name_and_description_and_address(params[:query])
    else
      @flats = policy_scope(Flat)
    end
  end

  def show
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def edit
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_url, notice: 'Flat was successfully destroyed.'
  end

  private
    def set_flat
      @flat = Flat.find(params[:id])
      authorize @flat
    end

    def flat_params
      params.require(:flat).permit(:name, :description, :address, :photo, :lat, :long)
    end
end
