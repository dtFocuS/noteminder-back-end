class ReminderSerializer < ActiveModel::Serializer
  #attributes :id, :date, :time, :location, :priority, :note_id
  def initialize(reminder_object)
    @reminder = reminder_object
  end

  def to_serialized_json
    @reminder.to_json(only: [:id, :date, :time, :location, :priority, :note_id])
  end
end
