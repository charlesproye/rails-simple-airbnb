class FlatsController < ApplicationController
  before_action :find, only: [:show, :destroy, :edit, :update]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params_flats)
    @flat.save

    redirect_to flat_path(@flat)
  end

  def show
  end

  def edit
  end

  def update
    @flat.update(params_flats)
    @flat.save

    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy

    redirect_to flats_path
  end

  private

  def find
    @flat = Flat.find(params[:id])
  end

  def params_flats
    params.require(:flat).permit(:description, :name, :address, :number_of_guests, :price_per_night, :picture)
  end
end
