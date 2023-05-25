class NotesController < ApplicationController
  def index
    @notes = Note.all
    @new_note = Note.new
  end

  def create
    @new_note = Note.new(note_params)
    if @new_note.save
      redirect_to notes_path, notice: 'Note created successfully.'
    else
      @notes = Note.all
      render :index
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path, notice: 'Note deleted successfully.'
  end

  private

  def note_params
    params.require(:note).permit(:name, :description)
  end
end
