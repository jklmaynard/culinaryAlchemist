class Api::V1::NotesController < Api::V1::BaseController

  def index
    @notes = Note.all
    respond_with(@notes)
  end

  def show
    respond_with Note.find(params[:id])
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
