class NotesController < ApplicationController

  def index
    @notes = Note.all
    render @notes, as: :json
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render @note, as: :json
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:body, :recipe_id)
  end
end
