class AnimalsController < ApplicationController
  layout 'admin'
  def index
    @animals = Animal.all
  end
  def show
    @animals = Animal.find(params[:id])
  end
end
