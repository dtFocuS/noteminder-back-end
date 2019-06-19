class Api::V1::RemindersController < ApplicationController


  def index
    reminders = Reminder.all
    render json: ReminderSerializer.new(reminders).to_serialized_json
  end
end
