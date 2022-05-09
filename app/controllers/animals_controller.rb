class AnimalsController < ApplicationController
  layout 'admin'
  def index
    @animals = Animal.all
  end
end
