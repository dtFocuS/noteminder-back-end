class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :location, :priority, :note_id
end
