class Api::V1::RemindersController < ApplicationController


  def index
    reminders = Reminder.all
    render json: ReminderSerializer.new(reminders).to_serialized_json
  end

  def create
    reminder = Reminder.new(reminder_params)
    if reminder.save
      render json: ReminderSerializer.new(reminder).to_serialized_json
    else

    end

  end

  def show
    reminder = reminder.find_by(id: params[:id])
    render json: ReminderSerializer.new(reminder).to_serialized_json
  end

  def destroy
    reminder = reminder.find_by(id: params[:id])
    reminder.destroy
    render json: ReminderSerializer.new(reminder).to_serialized_json
  end


  private

  def reminder_params
    params.require(:reminder).permit(:date, :time, :priority, :note_id)

  end
end
