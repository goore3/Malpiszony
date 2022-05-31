class Admin::NotesController < ApplicationController
    layout 'admin'
    before_action :authenticate_employee!

    def new
      @note = Note.new
    end

    def create
      @note = Note.new(notes_params)
      
      if @note.save
        redirect_to [:admin, @animals]
      else
        render :new, status: :unprocessable_entity
      end
    end

    private
    def notes_params
      params.require(:note).permit(:content, :date, :animal_id, :employee_id)
    end
end
