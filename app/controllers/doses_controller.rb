class DosesController < ApplicationController

  before_action :set_dose, only:[:destroy, :edit, :update]


  def create
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def edit
  end

  def update
  end

  def destroy
    @dose = Dose.destroy(d_params)
  end

  private

  def c_params
    params.require(:cocktail).permit(:name)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
