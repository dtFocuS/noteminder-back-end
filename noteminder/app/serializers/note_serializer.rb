class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :folder_id
end
