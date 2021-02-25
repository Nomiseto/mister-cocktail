class DosesController < ApplicationController

  def new
    @dose = Dose.new
   end

  def create
    @dose = Dose.create(dose_params)
    if @dose.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
