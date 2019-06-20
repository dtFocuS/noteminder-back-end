class NoteSerializer < ActiveModel::Serializer
  #attributes :id, :title, :content, :folder_id

  def initialize(note_object)
    @note = note_object
  end

  def to_serialized_json
    @note.to_json(only: [:id, :title, :content, :folder_id, :time])

  end
end
