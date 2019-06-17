class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :location, :priority
end
