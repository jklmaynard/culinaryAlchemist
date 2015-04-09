class NotesController < ApplicationController

respond_to :html, :json

  def show
    @note = Note.find(params[:id]).to_json()
    respond_with(@note)
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
