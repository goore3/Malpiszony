class AnimalsController < ApplicationController
  layout 'admin'
  def index
    @animals = Animal.all
  end
  def show
    @animals = Animal.find(params[:id])
  end
  def new
    @animals = Animal.new
  end

  def create
    @animals = Animal.new(animals_params)

    if @animals.save
      redirect_to @animals
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @animals = Animal.find(params[:id])
  end

  def update
    @animals = Animal.find(params[:id])

    if @animals.update(animals_params)
      redirect_to @animals
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @animals = Animal.find(params[:id])
    @animals.destroy

    redirect_to "/animals/", status: :see_other
  end

  private
    def animals_params
      params.require(:animal).permit(:name, :species, :age, :description, :enclosure_id)
    end
end
