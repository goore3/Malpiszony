class AnimalsController < ApplicationController
  layout 'admin'
  before_action :authenticate_employee!
  def index
    @animals = Animal.all
  end
end
