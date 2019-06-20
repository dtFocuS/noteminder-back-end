class FolderSerializer < ActiveModel::Serializer
  #attributes :id, :name, :user_id

  def initialize(folder_object)
    @folder = folder_object
  end

  def to_serialized_json
    @folder.to_json(:include => {
      :notes => {:only => [:id, :content, :time, :folder_id]}
    }, :except => [:updated_at])

  end
end
