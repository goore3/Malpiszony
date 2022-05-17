class EnclosuresController < ApplicationController
  layout 'admin'
  before_action :authenticate_employee!
  def index
    @enclosures = Enclosure.all
  end
  def show
    @enclosures = Enclosure.find(params[:id])
  end
  def new
    @enclosures = Enclosure.new
  end

  def create
    @enclosures = Enclosure.new(enclosures_params)

    if @enclosures.save
      redirect_to @enclosures
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @enclosures = Enclosure.find(params[:id])
  end

  def update
    @enclosures = Enclosure.find(params[:id])

    if @enclosures.update(enclosures_params)
      redirect_to @enclosures
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @enclosures = Enclosure.find(params[:id])
    @enclosures.destroy

    redirect_to "/enclosures/", status: :see_other
  end

  private
    def enclosures_params
      params.require(:enclosure).permit(:localization, :name)
    end
end
