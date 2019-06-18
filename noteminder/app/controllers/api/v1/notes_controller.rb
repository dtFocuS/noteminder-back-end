class Api::V1::NotesController < ApplicationController
  def index
    notes = Note.all
    render json: NoteSerializer.new(notes).to_serialized_json
  end

  def create
    if note_params

    else

    end

  end

  def show
    note = Note.find_by(id: params[:id])
    render json: note
  end


  private

  def note_params
    require(:note).permit(:title, :content);

  end
end
