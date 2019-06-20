class Api::V1::NotesController < ApplicationController
  def index
    notes = Note.all
    render json: NoteSerializer.new(notes).to_serialized_json
  end

  def create
    note = Note.new(note_params)
    if note.save
      render json: NoteSerializer.new(note).to_serialized_json
    else

    end

  end

  def show
    note = Note.find_by(id: params[:id])
    render json: NoteSerializer.new(note).to_serialized_json
  end

  def update
    note = Note.find_by(id: params[:id])
    if note.update(note_params)
       render json: NoteSerializer.new(note).to_serialized_json
    else
    #
    end
  end


  private

  def note_params
    params.require(:note).permit(:id, :time, :content, :folder_id);

  end
end
